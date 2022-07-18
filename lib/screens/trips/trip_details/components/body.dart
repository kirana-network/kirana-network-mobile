import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_background_service_ios/flutter_background_service_ios.dart';
import 'package:geolocator/geolocator.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:maps_toolkit/maps_toolkit.dart';
import 'package:quick_log/quick_log.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/components/map_preview.dart';
import 'package:kirana_network_mobile/components/schedule_date.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/core/utils.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/trips/trip_complete/trip_complete_screen.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/trips_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';
import 'package:kirana_network_mobile/core/tasks/background_service.dart';

var _logger = Logger("StackTrace.current.toString()");

class Body extends StatefulWidget {
  final TripModel trip;
  const Body({required Key key, required this.trip}) : super(key: key);

  @override
  _BodyState createState() => _BodyState(trip: this.trip);
}

class _BodyState extends State<Body> with WidgetsBindingObserver {
  final TripModel trip;
  _BodyState({required this.trip});
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    navigateToTripCompletePageIfNearDestination();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState _state) {
    _logger.fine("didChangeAppLifecycleState: $_state");
    if (_state == AppLifecycleState.resumed) {
      navigateToTripCompletePageIfNearDestination();
    }
  }

  void navigateToTripCompletePageIfNearDestination() {
    Geolocator.getCurrentPosition().then((Position position) {
      LatLngModel a = LatLngModel(
        longitude: position.longitude,
        latitude: position.latitude,
      );
      LatLngModel b = LatLngModel(
        longitude: trip.location.longitude,
        latitude: trip.location.latitude,
      );
      num? distance = computeDistance(a, b);
      if (distance != null && distance < minDistanceToDestination) {
        Navigator.pushNamed(context, TripCompleteScreen.routeName,
            arguments: {"trip": trip, "distance": distance});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              trip.address.toUpperCase(),
              style: screenHeadingTextStyle().merge(TextStyle(
                color: accentColor,
              )),
              textAlign: TextAlign.center,
            ),
            ScheduleDate(
                date: trip.scheduledAt, style: screenSubTitleTextStyle()),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: getProportionateScreenHeight(300),
            width: getProportionateScreenWidth(300),
            child: IgnorePointer(
              child: MapPreview(
                marker: getTripLatLng(),
                height: 300,
                width: 300,
                organizationId: trip.organizationId,
                zoom: 15,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BigButton(
              onPressed: () async {
                await stopActiveTrips();
                await startCurrentTrip();
                await MapsLauncher.launchQuery(trip.address);
              },
              text: "Start"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SecondaryBigButton(
              onPressed: () async {
                await stopCurrentTrip();
                Navigator.of(context).pushNamed(TripsScreen.routeName);
              },
              text: "Cancel"),
        )
      ].where((w) => w != null).toList(),
    );
  }

  stopActiveTrips() async {
    var activeTrip = sl<AppState>().appSharedPreferences.getActiveTrip();
    if (activeTrip == null || activeTrip.id == trip.id) {
      return;
    } else {
      try {
        var activeTripLatest = await sl<TripsApi>().retrieveTrip(activeTrip.id);
        if (activeTripLatest.tripStatus == TripModelTripStatusEnum.ON_ROUTE) {
          activeTripLatest.tripStatus = TripModelTripStatusEnum.SCHEDULED;
          await sl<TripsApi>()
              .updateTrip(activeTripLatest.id, activeTripLatest);
        }
      } catch (error) {
        _logger.fine("$error");
      }
    }
  }

  Future startCurrentTrip() async {
    trip.tripStatus = TripModelTripStatusEnum.ON_ROUTE;
    var extraGpsUnit = {
      "origin": LatLngModel(
        longitude: sl<AppState>().currentLocation.longitude,
        latitude: sl<AppState>().currentLocation.latitude,
      ),
      "startedAt": DateTime.now().toIso8601String()
    };
    if (trip.extra != null) {
      trip.extra['gpsUnit'] = extraGpsUnit;
    } else {
      trip.extra = {"gpsUnit": extraGpsUnit};
    }
    await updateTrip();
    await sl<AppState>().appSharedPreferences.setActiveTrip(trip);
    if (!(await FlutterBackgroundService().isRunning())) {
      final service = FlutterBackgroundService();
      await service.configure(
        androidConfiguration: AndroidConfiguration(
          onStart: onStart,
          isForegroundMode: false,
          autoStart: false,
        ),
        iosConfiguration: IosConfiguration(
          onBackground: onStart,
          onForeground: onStart,
          autoStart: false,
        ),
      );
    }
    FlutterBackgroundService().invoke('setAsForeground', {
      "content": trip.address,
      "title": "KiranaNetwork",
    });
    // .sendData({"action": "setAsForeground", "content": });
    // await Future.delayed(Duration(seconds: 3));
    // FlutterBackgroundService()
    //     .sendData({"action": "setAsForeground", "content": trip.address});
    // await backgroundServiceReady();
  }

  Future<bool> backgroundServiceReady() async {
    await Future.delayed(Duration(seconds: 1));
    var isServiceRunning = await FlutterBackgroundService().isRunning();
    if (!isServiceRunning) {
      return await backgroundServiceReady();
    }
    return true;
  }

  Future stopCurrentTrip() async {
    trip.tripStatus = TripModelTripStatusEnum.SCHEDULED;
    await updateTrip();
    await sl<AppState>().appSharedPreferences.clearActiveTrip();
    // FlutterBackgroundService().sendData({"action": "stopService"});
    var service = FlutterBackgroundService();
    if (service is AndroidServiceInstance) {
      (service as AndroidServiceInstance).stopSelf();
    }
    if (service is IOSServiceInstance) {
      (service as IOSServiceInstance).stopSelf();
    }
  }

  Future updateTrip() async {
    var extraGpsUnit = {
      "origin": LatLngModel(
        longitude: sl<AppState>().currentLocation.longitude,
        latitude: sl<AppState>().currentLocation.latitude,
      ),
      "startedAt": DateTime.now().toIso8601String()
    };
    if (trip.extra != null) {
      trip.extra['gpsUnit'] = extraGpsUnit;
    } else {
      trip.extra = {"gpsUnit": extraGpsUnit};
    }
    await sl<TripsApi>().updateTrip(trip.id, trip);
  }

  getTripLatLng() {
    return LatLng(
      trip.location.latitude.toDouble(),
      trip.location.longitude.toDouble(),
    );
  }
}
