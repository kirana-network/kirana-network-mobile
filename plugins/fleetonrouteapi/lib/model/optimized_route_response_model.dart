//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class OptimizedRouteResponseModel {
  /// Returns a new [OptimizedRouteResponseModel] instance.
  OptimizedRouteResponseModel({
    @required this.totalDistance,
    this.orderedTripIds = const [],
  });

  num totalDistance;

  List<String> orderedTripIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptimizedRouteResponseModel &&
          other.totalDistance == totalDistance &&
          other.orderedTripIds == orderedTripIds;

  @override
  int get hashCode =>
      (totalDistance == null ? 0 : totalDistance.hashCode) +
      (orderedTripIds == null ? 0 : orderedTripIds.hashCode);

  @override
  String toString() =>
      'OptimizedRouteResponseModel[totalDistance=$totalDistance, orderedTripIds=$orderedTripIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'totalDistance'] = totalDistance;
    json[r'orderedTripIds'] = orderedTripIds;
    return json;
  }

  /// Returns a new [OptimizedRouteResponseModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OptimizedRouteResponseModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : OptimizedRouteResponseModel(
              totalDistance: json[r'totalDistance'] == null
                  ? null
                  : json[r'totalDistance'].toDouble(),
              orderedTripIds: json[r'orderedTripIds'] == null
                  ? null
                  : (json[r'orderedTripIds'] as List).cast<String>(),
            );

  static List<OptimizedRouteResponseModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OptimizedRouteResponseModel>[]
          : json
              .map((v) => OptimizedRouteResponseModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, OptimizedRouteResponseModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, OptimizedRouteResponseModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = OptimizedRouteResponseModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OptimizedRouteResponseModel-objects as value to a dart map
  static Map<String, List<OptimizedRouteResponseModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OptimizedRouteResponseModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OptimizedRouteResponseModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
