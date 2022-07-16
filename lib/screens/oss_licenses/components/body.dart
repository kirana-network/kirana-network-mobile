import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/oss_licenses.dart';
import 'package:kirana_network_mobile/screens/oss_licenses/components/licenses_info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ossLicenses.keys
          .map(
            (package) => LicenseInfo(licenseData: ossLicenses[package]),
          )
          .toList(),
    );
  }
}


// 