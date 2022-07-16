import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/screens/signup/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static var routeName = "/signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
