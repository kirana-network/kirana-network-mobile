import 'package:firebase_auth/firebase_auth.dart';
import 'package:fleetonrouteapi/api.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quick_log/quick_log.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';

final logger = Logger("AuthUtils");

Future refreshToken() async {
  var authApi = sl<AuthApi>();
  var appState = sl<AppState>();
  String token;
  if (appState.authUser?.refreshToken != null) {
    var result = await authApi.refreshToken(
      RefreshTokenPayloadModel(
        refreshToken: appState.authUser!.refreshToken,
      ),
    );
    token = result.idToken;
  } else {
    token = await silentSignInToken();
  }
  if (token.isNotEmpty) {
    appState.authUser!.idToken = token;
    await appState.appSharedPreferences.setAuthUser(appState.authUser!);
  }
}

Future<String> silentSignInToken() async {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn =
      GoogleSignIn(scopes: ["email", "profile", "openid"]);
  final GoogleSignInAccount? googleSignInAccount =
      await googleSignIn.signInSilently(suppressErrors: true);
  logger.fine("${googleSignInAccount}");
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;
  logger.fine("${googleSignInAuthentication.idToken}");
  logger.fine("${googleSignInAuthentication.accessToken}");
  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final authResult = await _auth.signInWithCredential(credential);
  final user = authResult.user;
  final token = (await user!.getIdToken());
  return token;
}
