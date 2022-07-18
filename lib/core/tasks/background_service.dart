import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:geolocator/geolocator.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:quick_log/quick_log.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/core/config.dart';
import 'package:kirana_network_mobile/core/tasks/current_location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_background_service_ios/flutter_background_service_ios.dart';

var _logger = Logger("background_service.dart");

Future<bool> onStart(ServiceInstance service) async {
  _logger.fine("onStart");
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  if (service is AndroidServiceInstance) {
    service.on('setAsForeground').listen((event) {
      service.setAsForegroundService();
    });
    service.on('setAsBackground').listen((event) {
      service.setAsBackgroundService();
    });
  }

  if (service is IOSServiceInstance) {
    service.on('setAsForeground').listen((event) {
      _launch(service, event);
    });
    service.on('setAsBackground').listen((event) {
      service.invoke('setNotificationInfo',
          {"title": "KiranaNetwork", "content": event?['content']});
    });
  }
  service.on('stopService').listen((event) {
    service.stopSelf();
  });

  return true;
}

void _launch(ServiceInstance service, Map<String, dynamic>? event) {
  if (service is AndroidServiceInstance) {
    service.setForegroundNotificationInfo(
      content: event?['content'],
      title: "KiranaNetwork",
    );
  }
  if (service is IOSServiceInstance) {
    service.invoke('setNotificationInfo', {
      "title": "KiranaNetwork",
      "content": event?["content"],
    });
  }

  _startBackgroundGpsUpdates();
}

void _startBackgroundGpsUpdates() {
  Timer.periodic(Duration(seconds: 5), (timer) async {
    if (!(await FlutterBackgroundService().isRunning())) {
      timer.cancel();
    }
    var position = await determinePosition();
    var user = await _getUser();
    var api = await _getGpsUnitApi(user);
    await _updateGpsUnit(api, position, user);
    _refreshUserToken(user);
  });
}

Future<AuthUserModel> _getUser() async {
  var sp = await SharedPreferences.getInstance();
  var user = AuthUserModel.fromJson(jsonDecode(sp.getString("AuthUser")!));
  _logger.fine("user: $user");
  return user;
}

Future<ApiClient> _getApiClient(AuthUserModel user) async {
  final appConfig = await AppConfig.load();
  final apiClient = ApiClient(basePath: appConfig.apiUrl);
  apiClient.addDefaultHeader("Content-Type", "application/json");
  apiClient.addDefaultHeader("Authorization", user.idToken);
  _logger.fine("apiClient: $apiClient");
  return apiClient;
}

Future<GpsunitsApi> _getGpsUnitApi(AuthUserModel user) async {
  var api = GpsunitsApi(await _getApiClient(user));
  return api;
}

Future _updateGpsUnit(
    GpsunitsApi api, Position position, AuthUserModel user) async {
  GPSUnitModel unit = await api.retrieveGpsUnit(user.uid, user.uid);
  unit.locationAccuracy = position.accuracy;
  unit.locationLongitude = position.longitude;
  unit.locationLatitude = position.latitude;
  unit.lastUpdatedAt = position.timestamp?.millisecondsSinceEpoch;
  _logger.fine("updateGpsUnit: $unit");
  await api.updateGpsUnit(
    unit.id,
    unit.associatedUserProfileId,
    unit,
  );
  _logger.fine("updateGpsUnit done");
}

Future<AuthApi> _getAuthApi(AuthUserModel user) async {
  var api = AuthApi(await _getApiClient(user));
  return api;
}

Future _refreshUserToken(AuthUserModel user) async {
  _logger.fine(
    "determine and update user token if it will expire in less than 20 minutes",
  );
  DateTime expiryDate = Jwt.getExpiryDate(user.idToken)!.toUtc();
  var minDateTime = DateTime.now().subtract(Duration(minutes: 20)).toUtc();
  _logger.fine("compare $expiryDate with $minDateTime");
  if (expiryDate.compareTo(minDateTime) < 0 && user.refreshToken != null) {
    _logger.fine("needs to refresh");
    var api = await _getAuthApi(user);
    var refreshResult = await api.refreshToken(
        RefreshTokenPayloadModel(refreshToken: user.refreshToken));
    var sp = await SharedPreferences.getInstance();
    user.idToken = refreshResult.idToken;
    sp.setString("AuthUser", jsonEncode(user.toJson()));
  }
}
