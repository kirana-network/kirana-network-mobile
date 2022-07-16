import 'package:firebase_auth/firebase_auth.dart';
import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/helpers/keyboard.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/login/components/form_error.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/trips_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  String password = "", confirmPassword = "";
  String error = "";
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(
              onChanged: (newValue) => password = newValue,
              labelText: "Password",
              hintText: "Enter your password",
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(
              onChanged: (newValue) => confirmPassword = newValue,
              labelText: "Confirm Password",
              hintText: "Confirm your password",
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            error.isNotEmpty ? FormError(error: error) : Container(),
            SizedBox(height: getProportionateScreenHeight(30)),
            BigButton(
                text: "Signup",
                onPressed: () {
                  KeyboardUtil.hideKeyboard(context);
                  _handleSignup();
                })
          ],
        ));
  }

  TextFormField buildPasswordFormField(
      {required Function(String) onChanged,
      required String labelText,
      required String hintText}) {
    return TextFormField(
      obscureText: !_passwordVisible,
      onChanged: onChanged,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: IconButton(
            color: primaryColor,
            icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off),
            onPressed: () =>
                setState(() => _passwordVisible = !_passwordVisible),
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (newValue) => email = newValue,
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  Future _handleSignup() async {
    if (password != confirmPassword ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      setState(() => error = "Password and confirm password do not match");
      return;
    }
    try {
      final credentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      print("credentials $credentials");
      print("credentials.user ${credentials.user}");
      await sl<AppState>().initialize(
        AuthUserModel(
          email: credentials.user!.email,
          emailVerified: credentials.user!.emailVerified,
          idToken: await credentials.user!.getIdToken(),
          refreshToken: credentials.user!.refreshToken,
          uid: credentials.user!.uid,
          displayName: credentials.user!.displayName ?? credentials.user!.email,
        ),
      );
      Navigator.pushReplacementNamed(context, TripsScreen.routeName);
    } catch (exception) {
      setState(() => error = exception.toString());
    }
  }
}
