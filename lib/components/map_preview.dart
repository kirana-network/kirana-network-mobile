import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/widgets.dart';
import 'package:maps_toolkit/maps_toolkit.dart';
import 'package:kirana_network_mobile/injection_container.dart';

class MapPreview extends StatefulWidget {
  final LatLng marker;
  final double zoom;
  final num height;
  final num width;
  final String organizationId;
  MapPreview(
      {required this.marker,
      this.zoom = 17,
      required this.height,
      required this.width,
      required this.organizationId});

  @override
  _MapPreviewState createState() => _MapPreviewState(
        zoom: zoom,
        marker: marker,
        height: height,
        width: width,
        organizationId: organizationId,
      );
}

class _MapPreviewState extends State<MapPreview> {
  late String url;
  LatLng marker;
  double zoom;
  final num height;
  final num width;
  final String organizationId;
  _MapPreviewState(
      {required this.marker,
      required this.zoom,
      required this.height,
      required this.width,
      required this.organizationId}) {
    // getUrl
    NavigationApi api = sl();
    api
        .getTileImage(
      marker.latitude,
      marker.longitude,
      height,
      width,
      zoom,
      organizationId,
    )
        .then((response) {
      setState(() {
        url = response.url;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: url != null ? Image.network(url) : null);
  }
}
