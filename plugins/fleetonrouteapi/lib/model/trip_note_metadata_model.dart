//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class TripNoteMetadataModel {
  /// Returns a new [TripNoteMetadataModel] instance.
  TripNoteMetadataModel({
    @required this.location,
    @required this.details,
  });

  LatLngModel location;

  Map details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TripNoteMetadataModel &&
     other.location == location &&
     other.details == details;

  @override
  int get hashCode =>
    (location == null ? 0 : location.hashCode) +
    (details == null ? 0 : details.hashCode);

  @override
  String toString() => 'TripNoteMetadataModel[location=$location, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'location'] = location;
      json[r'details'] = details;
    return json;
  }

  /// Returns a new [TripNoteMetadataModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TripNoteMetadataModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TripNoteMetadataModel(
        location: LatLngModel.fromJson(json[r'location']),
        details: json[r'details'],
    );

  static List<TripNoteMetadataModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TripNoteMetadataModel>[]
      : json.map((v) => TripNoteMetadataModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, TripNoteMetadataModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripNoteMetadataModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TripNoteMetadataModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripNoteMetadataModel-objects as value to a dart map
  static Map<String, List<TripNoteMetadataModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TripNoteMetadataModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripNoteMetadataModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

