import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/app_top_bar.dart';
import 'package:kirana_network_mobile/components/bottom_navbar.dart';
import 'package:kirana_network_mobile/screens/oss_licenses/components/body.dart';

class OSSLicensesScreen extends StatelessWidget {
  static final String routeName = "/oss-licenses";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppTopBar(
          routeTitle: "Licenses",
          actions: [],
        ),
        bottomNavigationBar: BottomNavbar(
          selectedMenu: MenuState.Profile,
          key: Key("bottomNavBar"),
        ),
        body: Body());
  }
}
