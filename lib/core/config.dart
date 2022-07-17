// https://flutterigniter.com/env-specific-configuration/

import 'dart:convert';
import 'dart:io';

import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

final PLAY_STORE_URL = (Platform.isAndroid)
    ? "https://play.google.com/store/apps/details?id=network.kirana.mobile"
    : "https://apps.apple.com/us/app/fleetonroute/id9999999999";

class AppConfig {
  final String apiUrl;
  final String trackingUrl;
  late String? googleApiKey;
  late ApiVersionModel? fleetOnRouteClientVersion;
  AppConfig(
      {required this.apiUrl,
      required this.trackingUrl,
      this.googleApiKey,
      this.fleetOnRouteClientVersion});
  static Future<AppConfig> load() async {
    const env = kReleaseMode ? "prod" : "dev";

    final contents = await rootBundle.loadString('assets/config/$env.json');
    var jsonContents = json.decode(contents);

    //! It is important that this json file is small.
    final fleetOnRouteSwaggerContent = await rootBundle
        .loadString('assets/config/fleetonrouteapi.swagger.json');
    final version = json.decode(fleetOnRouteSwaggerContent)["version"];

    return AppConfig(
      apiUrl: jsonContents['apiUrl'],
      trackingUrl: jsonContents['trackingUrl'],
      googleApiKey: jsonContents["googleApiKey"],
      fleetOnRouteClientVersion: ApiVersionModel(
        full: version,
        major: int.parse(version.split(".")[0]),
        minor: int.parse(version.split(".")[1]),
        patch_: int.parse(version.split(".")[2]),
      ),
    );
  }

  factory AppConfig.fromJSON(Map<String, dynamic> json) {
    return AppConfig(
      apiUrl: json['apiUrl'],
      trackingUrl: json['trackingUrl'],
    );
  }
}
