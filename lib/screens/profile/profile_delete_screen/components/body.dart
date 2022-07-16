import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/splash/splash_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late String confirmation;
  bool isConfirmed() {
    return confirmation == "permanently delete";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          width: double.infinity,
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                    Text(
                      "Profile - Delete my account",
                      style: screenHeadingTextStyle(),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                    Text(
                      "Caution! Deleting your account is permanent. This action will delete your account, disconnect you from all organizations, and permanently remove your login credentials from our system. Any data that cannot be deleted will be relabeled to `[deleted]`. If you are unsure about deleting your account, please consider deactivating any active subscriptions.",
                      style: screenSubTitleTextStyle(),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                    buildEmailFormField(),
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                    ElevatedButton(
                        child: Text("Delete my account"),
                        onPressed: isConfirmed()
                            ? () async {
                                // call api; then logout
                                var appState = sl<AppState>();
                                await sl<UserprofilesApi>()
                                    .deleteUserProfile(appState.authUser!.uid);
                                await appState.logout();
                                Navigator.pushNamed(
                                    context, SplashScreen.routeName);
                              }
                            : null,
                        style: ButtonStyle(
                          backgroundColor: isConfirmed()
                              ? MaterialStateProperty.all<Color>(Colors.red)
                              : MaterialStateProperty.all<Color>(Colors.grey),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ))
                  ],
                ),
              ))),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (newValue) => setState(() {
        confirmation = newValue;
      }),
      decoration: InputDecoration(
        labelText: "Confirmation",
        hintText: "type: permanently delete",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
