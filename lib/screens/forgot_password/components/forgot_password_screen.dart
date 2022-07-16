import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static var routeName = "/forgot-password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
