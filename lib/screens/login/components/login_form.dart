import 'dart:convert';

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

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
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
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            error.isNotEmpty ? FormError(error: error) : Container(),
            SizedBox(height: getProportionateScreenHeight(30)),
            BigButton(
                text: "Login",
                onPressed: () {
                  KeyboardUtil.hideKeyboard(context);
                  _handleLogin();
                })
          ],
        ));
  }

  _handleLogin() {
    sl<AuthApi>()
        .login(LoginPayloadModel(password: password, username: email))
        .then((authUser) async {
      await sl<AppState>().initialize(authUser);
      Navigator.pushNamed(context, TripsScreen.routeName);
    }, onError: (error) {
      final jsonDecodedError = jsonDecode(error.message);
      setState(() => this.error = jsonDecodedError["message"]);
    });
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: !_passwordVisible,
      onChanged: (newValue) => password = newValue,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
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
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
