//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ApiKeyModel {
  /// Returns a new [ApiKeyModel] instance.
  ApiKeyModel({
    @required this.keyId,
    @required this.token,
    @required this.userProfileId,
    @required this.organizationId,
    @required this.version,
    @required this.createdBy,
    @required this.createdAt,
    this.extra,
  });

  String keyId;

  String token;

  String userProfileId;

  Map organizationId;

  String version;

  String createdBy;

  num createdAt;

  Map extra;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiKeyModel &&
          other.keyId == keyId &&
          other.token == token &&
          other.userProfileId == userProfileId &&
          other.organizationId == organizationId &&
          other.version == version &&
          other.createdBy == createdBy &&
          other.createdAt == createdAt &&
          other.extra == extra;

  @override
  int get hashCode =>
      (keyId == null ? 0 : keyId.hashCode) +
      (token == null ? 0 : token.hashCode) +
      (userProfileId == null ? 0 : userProfileId.hashCode) +
      (organizationId == null ? 0 : organizationId.hashCode) +
      (version == null ? 0 : version.hashCode) +
      (createdBy == null ? 0 : createdBy.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (extra == null ? 0 : extra.hashCode);

  @override
  String toString() =>
      'ApiKeyModel[keyId=$keyId, token=$token, userProfileId=$userProfileId, organizationId=$organizationId, version=$version, createdBy=$createdBy, createdAt=$createdAt, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'keyId'] = keyId;
    json[r'token'] = token;
    json[r'userProfileId'] = userProfileId;
    json[r'organizationId'] = organizationId;
    json[r'version'] = version;
    json[r'createdBy'] = createdBy;
    json[r'createdAt'] = createdAt;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [ApiKeyModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApiKeyModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : ApiKeyModel(
          keyId: json[r'keyId'],
          token: json[r'token'],
          userProfileId: json[r'userProfileId'],
          organizationId: json[r'organizationId'],
          version: json[r'version'],
          createdBy: json[r'createdBy'],
          createdAt:
              json[r'createdAt'] == null ? null : json[r'createdAt'].toDouble(),
          extra: json[r'extra'],
        );

  static List<ApiKeyModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ApiKeyModel>[]
          : json
              .map((v) => ApiKeyModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ApiKeyModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ApiKeyModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = ApiKeyModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ApiKeyModel-objects as value to a dart map
  static Map<String, List<ApiKeyModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ApiKeyModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ApiKeyModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
