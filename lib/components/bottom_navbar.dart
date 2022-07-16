import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/screens/profile/profile_screen/profile_screen.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/trips_screen.dart';
import 'package:kirana_network_mobile/theme.dart';

enum MenuState { Trips, Map, Profile, Invitations }

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    required Key key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;
  final Color inActiveIconColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xFF00171F),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(40),
        //   topRight: Radius.circular(40),
        // ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.local_shipping_outlined),
                color: getSelectedColor(MenuState.Trips),
                onPressed: () =>
                    Navigator.pushNamed(context, TripsScreen.routeName),
              ),
              IconButton(
                icon: Icon(Icons.person_outline),
                color: getSelectedColor(MenuState.Profile),
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }

  Color getSelectedColor(MenuState menuState) {
    return menuState == selectedMenu ? accentColor : inActiveIconColor;
  }
}
