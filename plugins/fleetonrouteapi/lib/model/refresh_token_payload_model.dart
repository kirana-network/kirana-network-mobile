//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class RefreshTokenPayloadModel {
  /// Returns a new [RefreshTokenPayloadModel] instance.
  RefreshTokenPayloadModel({
    @required this.refreshToken,
  });

  String refreshToken;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefreshTokenPayloadModel && other.refreshToken == refreshToken;

  @override
  int get hashCode => (refreshToken == null ? 0 : refreshToken.hashCode);

  @override
  String toString() => 'RefreshTokenPayloadModel[refreshToken=$refreshToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'refreshToken'] = refreshToken;
    return json;
  }

  /// Returns a new [RefreshTokenPayloadModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RefreshTokenPayloadModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : RefreshTokenPayloadModel(
              refreshToken: json[r'refreshToken'],
            );

  static List<RefreshTokenPayloadModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <RefreshTokenPayloadModel>[]
          : json
              .map((v) => RefreshTokenPayloadModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, RefreshTokenPayloadModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, RefreshTokenPayloadModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = RefreshTokenPayloadModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RefreshTokenPayloadModel-objects as value to a dart map
  static Map<String, List<RefreshTokenPayloadModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<RefreshTokenPayloadModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RefreshTokenPayloadModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
