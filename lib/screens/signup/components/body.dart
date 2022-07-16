import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/screens/signup/components/signup_form.dart';
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
                  "Signup",
                  style: screenHeadingTextStyle(),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignupForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
