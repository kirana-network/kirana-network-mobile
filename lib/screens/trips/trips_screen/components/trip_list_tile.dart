import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/schedule_date.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/core/utils.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/trips/trip_complete/trip_complete_screen.dart';
import 'package:kirana_network_mobile/screens/trips/trip_details/trip_details_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';

class TripListTile extends StatelessWidget {
  final TripModel trip;
  TripListTile({required this.trip});

  void onTap(BuildContext context, num? distance) {
    if (distance == null) {
      return;
    }
    if (distance < minDistanceToDestination) {
      Navigator.pushNamed(context, TripCompleteScreen.routeName,
          arguments: {"trip": trip, "distance": distance});
    } else {
      Navigator.pushNamed(context, TripDetailScreen.routeName,
          arguments: {"trip": trip, "distance": distance});
    }
  }

  @override
  Widget build(BuildContext context) {
    LatLngModel a = LatLngModel(
      longitude: sl<AppState>().currentLocation.longitude,
      latitude: sl<AppState>().currentLocation.latitude,
    );
    LatLngModel b = LatLngModel(
      longitude: trip.location.longitude,
      latitude: trip.location.latitude,
    );
    num? distance = computeDistance(a, b);
    TripModel? activeTrip =
        (sl<AppState>().appSharedPreferences.getActiveTrip());
    return Column(
      children: [
        ListTile(
          title: Text(trip.address),
          onTap: () => onTap(context, distance),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScheduleDate(date: trip.scheduledAt),
              distance != null
                  ? Text(
                      "Distance: ${distance.toStringAsFixed(1)} Km",
                      textAlign: TextAlign.start,
                    )
                  : Container()
            ],
          ),
          isThreeLine: true,
          selected: activeTrip != null && activeTrip.id == trip.id,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.01),
      ],
    );
  }
}
