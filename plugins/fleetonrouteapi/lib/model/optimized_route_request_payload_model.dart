//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class OptimizedRouteRequestPayloadModel {
  /// Returns a new [OptimizedRouteRequestPayloadModel] instance.
  OptimizedRouteRequestPayloadModel({
    @required this.startLocation,
    this.tripIds = const [],
  });

  LatLngModel startLocation;

  List<String> tripIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptimizedRouteRequestPayloadModel &&
          other.startLocation == startLocation &&
          other.tripIds == tripIds;

  @override
  int get hashCode =>
      (startLocation == null ? 0 : startLocation.hashCode) +
      (tripIds == null ? 0 : tripIds.hashCode);

  @override
  String toString() =>
      'OptimizedRouteRequestPayloadModel[startLocation=$startLocation, tripIds=$tripIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'startLocation'] = startLocation;
    json[r'tripIds'] = tripIds;
    return json;
  }

  /// Returns a new [OptimizedRouteRequestPayloadModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OptimizedRouteRequestPayloadModel fromJson(
          Map<String, dynamic> json) =>
      json == null
          ? null
          : OptimizedRouteRequestPayloadModel(
              startLocation: LatLngModel.fromJson(json[r'startLocation']),
              tripIds: json[r'tripIds'] == null
                  ? null
                  : (json[r'tripIds'] as List).cast<String>(),
            );

  static List<OptimizedRouteRequestPayloadModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OptimizedRouteRequestPayloadModel>[]
          : json
              .map((v) => OptimizedRouteRequestPayloadModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, OptimizedRouteRequestPayloadModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, OptimizedRouteRequestPayloadModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = OptimizedRouteRequestPayloadModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OptimizedRouteRequestPayloadModel-objects as value to a dart map
  static Map<String, List<OptimizedRouteRequestPayloadModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OptimizedRouteRequestPayloadModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OptimizedRouteRequestPayloadModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
