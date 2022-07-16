import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kirana_network_mobile/components/app_top_bar.dart';
import 'package:kirana_network_mobile/components/bottom_navbar.dart';
import 'package:kirana_network_mobile/screens/trips/trip_details/components/body.dart';

class TripDetailScreen extends StatelessWidget {
  static final String routeName = "/trip-details";
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    TripModel trip = arguments["trip"];

    return Scaffold(
      appBar: AppTopBar(
        routeTitle: "Trip Details",
        actions: [],
      ),
      bottomNavigationBar: BottomNavbar(
        selectedMenu: MenuState.Trips,
        key: Key("BottomNavbar"),
      ),
      body: Body(
        trip: trip,
        key: Key("Body"),
      ),
    );
  }
}
