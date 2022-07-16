import 'package:flutter/material.dart';
import 'package:kirana_network_mobile/screens/login/components/body.dart';
import 'package:kirana_network_mobile/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
