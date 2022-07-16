//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class TripOptionsModel {
  /// Returns a new [TripOptionsModel] instance.
  TripOptionsModel({
    @required this.enableNotifications,
    @required this.requireProofOfDelivery,
  });

  bool enableNotifications;

  bool requireProofOfDelivery;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TripOptionsModel &&
          other.enableNotifications == enableNotifications &&
          other.requireProofOfDelivery == requireProofOfDelivery;

  @override
  int get hashCode =>
      (enableNotifications == null ? 0 : enableNotifications.hashCode) +
      (requireProofOfDelivery == null ? 0 : requireProofOfDelivery.hashCode);

  @override
  String toString() =>
      'TripOptionsModel[enableNotifications=$enableNotifications, requireProofOfDelivery=$requireProofOfDelivery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'enableNotifications'] = enableNotifications;
    json[r'requireProofOfDelivery'] = requireProofOfDelivery;
    return json;
  }

  /// Returns a new [TripOptionsModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TripOptionsModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : TripOptionsModel(
          enableNotifications: json[r'enableNotifications'],
          requireProofOfDelivery: json[r'requireProofOfDelivery'],
        );

  static List<TripOptionsModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <TripOptionsModel>[]
          : json
              .map((v) => TripOptionsModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, TripOptionsModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripOptionsModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = TripOptionsModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripOptionsModel-objects as value to a dart map
  static Map<String, List<TripOptionsModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<TripOptionsModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripOptionsModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
