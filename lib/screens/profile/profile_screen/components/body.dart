import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/oss_licenses/oss_licenses_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_account_screen/profile_account_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_invitations/profile_invitations_screen.dart';
import 'package:kirana_network_mobile/screens/profile/profile_screen/components/profile_menu.dart';
import 'package:kirana_network_mobile/screens/profile/profile_screen/components/profile_pic.dart';
import 'package:kirana_network_mobile/screens/profile/profile_settings/profile_settings_screen.dart';
import 'package:kirana_network_mobile/screens/splash/splash_screen.dart';
import 'package:kirana_network_mobile/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(
            key: Key("ProfilePic"),
          ),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: Icon(Icons.account_circle, color: accentColor),
            press: () {
              Navigator.pushNamed(context, ProfileAccountScreen.routeName);
            },
            key: Key("a"),
          ),
          ProfileMenu(
            text: "Invitations",
            icon: Icon(Icons.mail_outline, color: accentColor),
            press: () {
              Navigator.pushNamed(context, ProfileInvitationsScreen.routeName);
            },
            key: Key("ab"),
          ),
          ProfileMenu(
            text: "Organizations",
            icon: Icon(Icons.business, color: accentColor),
            press: () {
              Navigator.pushNamed(context, ProfileSettingsScreen.routeName);
            },
            key: Key("ac"),
          ),
          ProfileMenu(
            text: "Privacy Policy",
            icon: Icon(Icons.privacy_tip_outlined, color: accentColor),
            press: () async {
              const url = "https://fleetonroute.com/privacy-policy";
              canLaunch(url).then((v) => launch(url));
            },
            key: Key("ad"),
          ),
          ProfileMenu(
            text: "Licenses",
            icon: Icon(Icons.insert_drive_file_outlined, color: accentColor),
            press: () async {
              Navigator.pushNamed(context, OSSLicensesScreen.routeName);
            },
            key: Key("ae"),
          ),
          ProfileMenu(
            text: "Log Out",
            icon: Icon(Icons.logout, color: accentColor),
            press: () async {
              await sl<AppState>().logout();
              Navigator.pushReplacementNamed(context, SplashScreen.routeName);
            },
            key: Key("af"),
          ),
        ],
      ),
    );
  }
}
