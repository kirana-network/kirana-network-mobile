//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class LatLngModel {
  /// Returns a new [LatLngModel] instance.
  LatLngModel({
    @required this.latitude,
    @required this.longitude,
  });

  num latitude;

  num longitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LatLngModel &&
     other.latitude == latitude &&
     other.longitude == longitude;

  @override
  int get hashCode =>
    (latitude == null ? 0 : latitude.hashCode) +
    (longitude == null ? 0 : longitude.hashCode);

  @override
  String toString() => 'LatLngModel[latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'latitude'] = latitude;
      json[r'longitude'] = longitude;
    return json;
  }

  /// Returns a new [LatLngModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LatLngModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : LatLngModel(
        latitude: json[r'latitude'] == null ?
          null :
          json[r'latitude'].toDouble(),
        longitude: json[r'longitude'] == null ?
          null :
          json[r'longitude'].toDouble(),
    );

  static List<LatLngModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <LatLngModel>[]
      : json.map((v) => LatLngModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, LatLngModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, LatLngModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = LatLngModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of LatLngModel-objects as value to a dart map
  static Map<String, List<LatLngModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LatLngModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = LatLngModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

