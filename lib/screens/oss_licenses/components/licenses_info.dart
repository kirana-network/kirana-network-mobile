import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LicenseInfo extends StatelessWidget {
  final Map<String, dynamic> licenseData;
  const LicenseInfo({required this.licenseData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(licenseData['name'], style: TextStyle(fontSize: 18)),
              Text("  (" + licenseData['version'] + ")",
                  style: TextStyle(fontSize: 18)),
            ],
          ),
          licenseData["homepage"] != null
              ? Text(licenseData["homepage"], style: TextStyle(fontSize: 16))
              : Container(),
          Text(licenseData['description']),
          Text(licenseData['license']),
          Divider(
            thickness: 10,
          )
        ],
      ),
    );
  }
}
