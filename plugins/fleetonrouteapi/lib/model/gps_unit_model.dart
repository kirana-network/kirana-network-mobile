//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class GPSUnitModel {
  /// Returns a new [GPSUnitModel] instance.
  GPSUnitModel({
    @required this.id,
    @required this.associatedUserProfileId,
    @required this.deviceName,
    this.lastUpdatedAt,
    @required this.locationAccuracy,
    @required this.locationLatitude,
    @required this.locationLongitude,
    this.extra,
  });

  String id;

  String associatedUserProfileId;

  String deviceName;

  /// number of milliseconds since epoch
  num lastUpdatedAt;

  num locationAccuracy;

  num locationLatitude;

  num locationLongitude;

  Map extra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GPSUnitModel &&
     other.id == id &&
     other.associatedUserProfileId == associatedUserProfileId &&
     other.deviceName == deviceName &&
     other.lastUpdatedAt == lastUpdatedAt &&
     other.locationAccuracy == locationAccuracy &&
     other.locationLatitude == locationLatitude &&
     other.locationLongitude == locationLongitude &&
     other.extra == extra;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (associatedUserProfileId == null ? 0 : associatedUserProfileId.hashCode) +
    (deviceName == null ? 0 : deviceName.hashCode) +
    (lastUpdatedAt == null ? 0 : lastUpdatedAt.hashCode) +
    (locationAccuracy == null ? 0 : locationAccuracy.hashCode) +
    (locationLatitude == null ? 0 : locationLatitude.hashCode) +
    (locationLongitude == null ? 0 : locationLongitude.hashCode) +
    (extra == null ? 0 : extra.hashCode);

  @override
  String toString() => 'GPSUnitModel[id=$id, associatedUserProfileId=$associatedUserProfileId, deviceName=$deviceName, lastUpdatedAt=$lastUpdatedAt, locationAccuracy=$locationAccuracy, locationLatitude=$locationLatitude, locationLongitude=$locationLongitude, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'associatedUserProfileId'] = associatedUserProfileId;
      json[r'deviceName'] = deviceName;
    if (lastUpdatedAt != null) {
      json[r'lastUpdatedAt'] = lastUpdatedAt;
    }
      json[r'locationAccuracy'] = locationAccuracy;
      json[r'locationLatitude'] = locationLatitude;
      json[r'locationLongitude'] = locationLongitude;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [GPSUnitModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GPSUnitModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GPSUnitModel(
        id: json[r'id'],
        associatedUserProfileId: json[r'associatedUserProfileId'],
        deviceName: json[r'deviceName'],
        lastUpdatedAt: json[r'lastUpdatedAt'] == null ?
          null :
          json[r'lastUpdatedAt'].toDouble(),
        locationAccuracy: json[r'locationAccuracy'] == null ?
          null :
          json[r'locationAccuracy'].toDouble(),
        locationLatitude: json[r'locationLatitude'] == null ?
          null :
          json[r'locationLatitude'].toDouble(),
        locationLongitude: json[r'locationLongitude'] == null ?
          null :
          json[r'locationLongitude'].toDouble(),
        extra: json[r'extra'],
    );

  static List<GPSUnitModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GPSUnitModel>[]
      : json.map((v) => GPSUnitModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, GPSUnitModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GPSUnitModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GPSUnitModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GPSUnitModel-objects as value to a dart map
  static Map<String, List<GPSUnitModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GPSUnitModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GPSUnitModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

