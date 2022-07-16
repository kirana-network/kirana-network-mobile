import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/app_top_bar.dart';
import 'package:kirana_network_mobile/components/bottom_navbar.dart';
import 'package:kirana_network_mobile/screens/profile/profile_screen/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static final String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppTopBar(
          routeTitle: "Profile",
          actions: [],
        ),
        bottomNavigationBar: BottomNavbar(
          selectedMenu: MenuState.Profile,
          key: Key("BottomNavbar"),
        ),
        body: Body());
  }
}
