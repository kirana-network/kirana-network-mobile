import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quick_log/quick_log.dart';
import 'package:kirana_network_mobile/components/render_loading.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/core/utils.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/main.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/components/empty_trips.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/components/trip_list_tile.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/trips_screen.dart';

final _logger = Logger("trips_screen.body");

class Body extends StatefulWidget {
  final SortOrder sortOrder;
  Body({required this.sortOrder});

  @override
  _BodyState createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  List<TripModel> trips = [];
  bool loading = true;
  late SortOrder sortOrder;

  _BodyState() {
    init();
  }

  void optimizeRoutes(LatLngModel currentLocation) async {
    if (trips.length > 0) {
      var tripIds = trips.map((trip) => trip.id).toList();
      var optimizedRoutesResponse = await sl<NavigationApi>().optimizeRoute(
          trips.first.organizationId,
          OptimizedRouteRequestPayloadModel(
              startLocation: currentLocation, tripIds: tripIds));
      List<TripModel> _trips = [];
      optimizedRoutesResponse.orderedTripIds.forEach((id) {
        _trips.add(trips.firstWhere((t) => t.id == id));
      });
      if (_trips.length != trips.length) {
        // Add missing trips to the bottom
        trips.forEach((trip) {
          if (!_trips.contains(trip)) {
            _trips.add(trip);
          }
        });
      }
      setState(() {
        trips = _trips;
      });
    }
  }

  void sortTrips() {
    LatLngModel currentLocation = LatLngModel(
      longitude: sl<AppState>().currentLocation.longitude,
      latitude: sl<AppState>().currentLocation.latitude,
    );
    if (this.widget.sortOrder == SortOrder.Closest ||
        this.widget.sortOrder == SortOrder.Furthest) {
      trips.sort((TripModel a, TripModel b) {
        var aLocation = LatLngModel(
            latitude: a.location.latitude, longitude: a.location.longitude);
        var bLocation = LatLngModel(
            latitude: b.location.latitude, longitude: b.location.longitude);
        var result = computeDistance(currentLocation, aLocation)!
            .compareTo(computeDistance(currentLocation, bLocation)!);
        var sortDirection = this.widget.sortOrder == SortOrder.Closest ? 1 : -1;
        return result * sortDirection;
      });
    }
    if (this.widget.sortOrder == SortOrder.Optimize) {
      this.optimizeRoutes(currentLocation);
    }
  }

  @override
  void didUpdateWidget(old) {
    super.didUpdateWidget(old);
    if (this.widget.sortOrder != sortOrder) {
      sortTrips();
    }
  }

  init() {
    if (sl<AppState>().appSharedPreferences.getActiveOrganization()?.id ==
        null) {
      loading = false;
      return;
    }
    sl<TripsApi>().listTrips(organizationIds: [
      (sl<AppState>().appSharedPreferences.getActiveOrganization()?.id)!
    ]).then((allTrips) {
      setState(() {
        var _trips = allTrips.records
            .where((trip) =>
                trip.tripStatus == TripModelTripStatusEnum.SCHEDULED ||
                trip.tripStatus == TripModelTripStatusEnum.ON_ROUTE)
            .toList();
        _trips.sort((a, b) =>
            ScheduleDateModelWithEquality.fromScheduleDateModel(a.scheduledAt)
                .compareTo(ScheduleDateModelWithEquality.fromScheduleDateModel(
                    b.scheduledAt)));
        trips = _trips;
        sortTrips();
      });
    }, onError: (error) {
      print(error);
    }).whenComplete(() => setState(() => loading = false));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: renderChild());
  }

  Widget renderChild() {
    if (loading) {
      return Loading();
    }
    if (trips.isEmpty) {
      return EmptyTrips();
    }
    return Scrollbar(
      child: ListView(
          children: trips.map((trip) => TripListTile(trip: trip)).toList()),
    );
  }
}
