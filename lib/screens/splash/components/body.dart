import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kirana_network_mobile/core/config.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/login/login_screen.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/trips_screen.dart';
import 'package:kirana_network_mobile/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:version/version.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  num animationOpacity = 1.0;
  late Timer animationTimer;
  SharedPreferences sp = sl();

  _BodyState() {
    animationTimer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      setState(() {
        animationOpacity = animationOpacity == 0 ? 1.0 : 0.0;
      });
    });
    this.checkApiVersion();
  }
  void showVersionDialog(String update) async {
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext buildContext) {
          return new AlertDialog(
            title: Text("App Update"),
            content: Text((update == "recommended"
                ? "It is recommended that you install a newer version of the app"
                : "Please install the newest version of this app")),
            actions: <Widget>[
              update == "recommended"
                  ? TextButton(
                      child: Text("Ignore for now"),
                      onPressed: () {
                        Navigator.pop(context);
                        attemptAutoSignIn();
                      },
                    )
                  : SizedBox.shrink(),
              OutlinedButton(
                  child: Text("Update"),
                  onPressed: () => launch(PLAY_STORE_URL)),
            ],
          );
        });
  }

  void checkApiVersion() async {
    var apiVersionInfo =
        await sl<ServicestatusApi>().retrieveSupportedApiVersions();
    var clientCurrentVersion =
        Version.parse(sl<AppConfig>().fleetOnRouteClientVersion!.full);
    var apiMinVersion =
        Version.parse(apiVersionInfo.minimumSupportedVersion.full);
    var deprecatedVersion =
        Version.parse(apiVersionInfo.deprecatedVersion.full);
    if (clientCurrentVersion < apiMinVersion) {
      showVersionDialog("required");
    } else if (clientCurrentVersion < deprecatedVersion) {
      showVersionDialog("recommended");
    } else {
      attemptAutoSignIn();
    }
  }

  void attemptAutoSignIn() async {
    var authUser = sl<AppState>().appSharedPreferences.getAuthUser();
    if (authUser == null) {
      Future.delayed(Duration(seconds: 1),
          () => Navigator.pushReplacementNamed(context, LoginScreen.routeName));
      return;
    }

    if (authUser.refreshToken != null) {
      var authApi = sl<AuthApi>();
      authApi
          .refreshToken(
              RefreshTokenPayloadModel(refreshToken: authUser.refreshToken))
          .then((token) async {
        await sl<AppState>().initialize(AuthUserModel.fromJson({
          "refreshToken": token.refreshToken,
          "displayName": authUser.displayName,
          "email": authUser.email,
          "emailVerified": authUser.emailVerified,
          "idToken": token.idToken,
          "uid": token.userId
        }));
        Navigator.pushReplacementNamed(context, TripsScreen.routeName);
      }).catchError((error) =>
              Navigator.pushReplacementNamed(context, LoginScreen.routeName));
    } else {
      signInWithGoogle().then((user) {
        Future.delayed(Duration(seconds: 1), () async {
          if (user == null) {
            Navigator.pushNamed(context, LoginScreen.routeName);
            return;
          }
          await sl<AppState>().initialize(user);
          Navigator.pushReplacementNamed(context, TripsScreen.routeName);
        });
      }).catchError((error) =>
          Navigator.pushReplacementNamed(context, LoginScreen.routeName));
    }
  }

  Future<AuthUserModel?> signInWithGoogle() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn =
        GoogleSignIn(scopes: ["email", "profile"]);
    final GoogleSignInAccount googleSignInAccount =
        (await googleSignIn.signInSilently(suppressErrors: true))!;
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final authResult = await _auth.signInWithCredential(credential);
    final user = authResult.user;
    final token = (await user?.getIdToken());
    sl<AppState>().authUserCredential = authResult;
    if (user != null) {
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);
      return AuthUserModel.fromJson({
        "refreshToken": null,
        "displayName": user.displayName,
        "email": user.email,
        "emailVerified": user.emailVerified,
        "idToken": token,
        "uid": user.uid,
      });
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: animationOpacity.toDouble(),
      curve: Curves.linear,
      duration: Duration(seconds: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/icons/icon.png'),
                color: primaryColor,
              ),
            ],
          ),
          Text(
            "FleetOnRoute",
            textScaleFactor: 3,
            style: TextStyle(color: primaryColor),
          ),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    animationTimer.cancel();
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
