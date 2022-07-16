import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quick_log/quick_log.dart';
import 'package:kirana_network_mobile/components/app_top_bar.dart';
import 'package:kirana_network_mobile/components/bottom_navbar.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/components/body.dart';
import 'package:kirana_network_mobile/theme.dart' as theme;

final _logger = Logger("trips_screen");

enum SortOrder { Closest, Furthest, Optimize }

class TripsScreen extends StatefulWidget {
  static String routeName = "/trips";
  @override
  _TripsScreenState createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  SortOrder? selectedSortOrder = SortOrder.Closest;

  void showVersionDialog(BuildContext context, String update) async {
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext buildContext) {
          return new AlertDialog(
            title: Text("Sort Trips"),
            content: Column(
              children: [
                RadioListTile(
                  title: Text("Closest trips first"),
                  value: SortOrder.Closest,
                  groupValue: selectedSortOrder,
                  toggleable: true,
                  onChanged: (SortOrder? value) {
                    setState(() {
                      selectedSortOrder = value;
                    });
                    Navigator.of(context).pop();
                  },
                ),
                RadioListTile(
                  title: Text("Furthest trips first"),
                  value: SortOrder.Furthest,
                  groupValue: selectedSortOrder,
                  toggleable: true,
                  onChanged: (SortOrder? value) {
                    setState(() {
                      selectedSortOrder = value;
                    });
                    Navigator.of(context).pop();
                  },
                ),
                RadioListTile(
                  title: Text("Optimize route"),
                  value: SortOrder.Optimize,
                  groupValue: selectedSortOrder,
                  toggleable: true,
                  onChanged: (SortOrder? value) {
                    setState(() {
                      selectedSortOrder = value;
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            actions: <Widget>[],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    _logger.fine("sortOrder: $selectedSortOrder");
    List<Widget> actions = <Widget>[
      IconButton(
        icon: const Icon(Icons.sort, color: Colors.white),
        tooltip: 'Sort Options',
        onPressed: () {
          showVersionDialog(context, "recommended");
        },
      ),
    ];
    return Scaffold(
      appBar: AppTopBar(routeTitle: "Trips", actions: actions),
      bottomNavigationBar: BottomNavbar(
        selectedMenu: MenuState.Trips,
        key: Key("BottomNavbar"),
      ),
      body: Body(
        sortOrder: selectedSortOrder!,
      ),
    );
  }
}
