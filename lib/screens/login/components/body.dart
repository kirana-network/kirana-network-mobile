import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/screens/forgot_password/components/forgot_password_screen.dart';
import 'package:kirana_network_mobile/screens/login/components/login_form.dart';
import 'package:kirana_network_mobile/screens/login/components/social_login_buttons.dart';
import 'package:kirana_network_mobile/screens/signup/signup_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                      "Welcome",
                      style: screenHeadingTextStyle(),
                    ),
                    Text(
                        "Sign in with your email and password  \nor Google account",
                        textAlign: TextAlign.center,
                        style: screenSubTitleTextStyle()),
                    SizedBox(height: SizeConfig.screenHeight * 0.08),
                    LoginForm(),
                    Row(
                      children: [
                        TextButton(
                            child: Text("Signup"),
                            onPressed: () => Navigator.pushNamed(
                                context, SignUpScreen.routeName),
                            style: TextButton.styleFrom(
                                primary: primaryColor,
                                textStyle: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize:
                                        getProportionateScreenHeight(20)))),
                        TextButton(
                            child: Text("Forgot Password"),
                            onPressed: () => Navigator.pushNamed(
                                context, ForgotPasswordScreen.routeName),
                            style: TextButton.styleFrom(
                                primary: primaryColor,
                                textStyle: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize:
                                        getProportionateScreenHeight(20)))),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.08),
                    SocialLoginButtons(),
                    SizedBox(height: getProportionateScreenHeight(20)),
                  ],
                ),
              ))),
    );
  }
}
