import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart' as svg;
import 'package:permission_handler/permission_handler.dart';
import 'package:kirana_network_mobile/components/app_top_bar.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/screens/splash/splash_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';

class PermissionRequiredScreen extends StatefulWidget {
  static var routeName = "/permission-required";
  @override
  _PermissionRequiredScreenState createState() =>
      _PermissionRequiredScreenState();
}

class _PermissionRequiredScreenState extends State<PermissionRequiredScreen> {
  _PermissionRequiredScreenState() {
    checkForPermissions();
  }

  checkForPermissions() {
    Timer.periodic(Duration(seconds: 1), (timer) async {
      print("checkForPermissions");
      if (await Permission.locationAlways.isGranted) {
        timer.cancel();
        if (mounted) {
          Navigator.pushReplacementNamed(context, SplashScreen.routeName);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppTopBar(
          routeTitle: "",
          actions: [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Icon(Icons.location_off_outlined,
                      size: 300, color: svgImageColor),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text("Location Permission Required",
                  style: screenHeadingTextStyle()
                      .merge(TextStyle(color: accentColor))),
              Text(
                  "KiranaNetwork requires access to your location to provide updates to the clients and organization.",
                  style: screenSubTitleTextStyle()),
              SizedBox(height: getProportionateScreenHeight(30)),
              BigButton(
                  onPressed: () async {
                    // Navigator.pushNamed(context, ProfileSettingsScreen.routeName);
                    var requestResult =
                        await Permission.locationAlways.request();
                    print("requestResult: $requestResult");
                    if (requestResult.isDenied) {
                      openAppSettings();
                    }
                    if (requestResult.isGranted) {
                      Navigator.pushReplacementNamed(
                          context, SplashScreen.routeName);
                    }
                  },
                  text: "Enable Location Service")
            ],
          ),
        ));
  }
}
