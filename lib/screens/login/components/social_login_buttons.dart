import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart' as fa;

import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/trips_screen.dart';

class SocialLoginButtons extends StatelessWidget {
  final fa.FirebaseAuth _auth = fa.FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ["email", "profile"]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgIconButton(
            icon: "assets/icons/social/googleplus.svg",
            press: () => signInWithGoogle(context),
            key: Key("svgIconButton"),
          )
        ],
      ),
    );
  }

  Future signInWithGoogle(BuildContext context) async {
    final GoogleSignInAccount googleSignInAccount =
        (await googleSignIn.signIn())!;
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final fa.AuthCredential credential = fa.GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final authResult = await _auth.signInWithCredential(credential);
    final user = authResult.user;
    final token = (await user?.getIdToken());
    sl<AppState>().authUserCredential = authResult;
    if (user == null) {
      return;
    }
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);
    final authUser = AuthUserModel.fromJson({
      "refreshToken": null,
      "displayName": user.displayName,
      "email": user.email,
      "emailVerified": user.emailVerified,
      "idToken": token,
      "uid": user.uid,
    });
    await sl<AppState>().initialize(authUser);
    Navigator.pushNamed(context, TripsScreen.routeName);
  }
}
