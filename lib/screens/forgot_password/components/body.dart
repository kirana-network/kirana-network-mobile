import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/screens/forgot_password/components/forgot_password_form.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class Body extends StatelessWidget {
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
            child: Column(children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: screenHeadingTextStyle(),
              ),
              Text("Enter your email and receive a link to reset your password",
                  textAlign: TextAlign.center,
                  style: screenSubTitleTextStyle()),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              ForgotPasswordForm(),
            ]),
          ),
        ),
      ),
    );
  }
}
