// @dart=2.9
import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_background_service_ios/flutter_background_service_ios.dart';
import 'package:provider/provider.dart';
import 'package:quick_log/quick_log.dart';
import 'package:kirana_network_mobile/core/auth_utils.dart';
import 'package:kirana_network_mobile/core/translations.dart';
import 'package:kirana_network_mobile/core/utils.dart' as utils;
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart' as sl;
import 'package:permission_handler/permission_handler.dart';
import 'package:kirana_network_mobile/routes.dart';
import 'package:kirana_network_mobile/screens/permissions/permission_required/permission_required_screen.dart';
import 'package:kirana_network_mobile/screens/splash/splash_screen.dart';
import 'package:kirana_network_mobile/theme.dart';
import 'core/tasks/background_service.dart';

final _logger = Logger("FlutterMain");

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.writer = ConsolePrinter(minLevel: utils.getMinLogLevel());
  await sl.init();
  await Firebase.initializeApp();
  final service = FlutterBackgroundService();
  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      isForegroundMode: false,
      autoStart: false,
      foregroundServiceNotificationTitle: "KiranaNetwork",
    ),
    iosConfiguration: IosConfiguration(
      onBackground: onStart,
      onForeground: onStart,
      autoStart: false,
    ),
  );
  startServiceIfActiveTrip();
  Timer.periodic(Duration(minutes: 30), (Timer timer) async {
    await refreshToken();
  });
  runApp(MyApp(await Permission.locationAlways.isGranted));
}

void startServiceIfActiveTrip() {
  _logger.fine("get current trip");
  var activeTrip = sl.sl<AppState>().appSharedPreferences.getActiveTrip();
  _logger.fine("get current trip $activeTrip");
  if (activeTrip != null) {
    _logger.fine("start service in foreground");
    Timer(
      Duration(seconds: 2),
      () {
        var service = FlutterBackgroundService();
        // if (service is AndroidServiceInstance) {
        //   _logger.fine("AndroidServiceInstance");
        // }
        // if (service is IOSServiceInstance) {
        //   _logger.fine("AndroidServiceInstance");
        // }

        // _logger.fine("service $service");
        FlutterBackgroundService().startService().then(
            (value) => FlutterBackgroundService().invoke('setAsBackground'));
      },
    );
  }
}

class MyApp extends StatelessWidget {
  final bool locationAlwaysGranted;
  MyApp(this.locationAlwaysGranted);
  @override
  Widget build(BuildContext context) {
    var initialRoute = SplashScreen.routeName;
    if (!locationAlwaysGranted) {
      Permission.locationAlways.status
          .then((s) => _logger.debug("Permission.locationAlways.status $s"));
      _logger.debug(
          "Status: locationRequest: $locationAlwaysGranted; Do something with locationRequest Result");
      initialRoute = PermissionRequiredScreen.routeName;
    }
    return ChangeNotifierProvider<AppState>(
      create: (context) => sl.sl<AppState>(),
      child: MaterialApp(
        localizationsDelegates: [
          const TranslationsDelegate(),
        ],
        title: Translations.title,
        theme: theme(),
        initialRoute: initialRoute,
        debugShowCheckedModeBanner: false,
        routes: routes,
      ),
    );
  }
}
