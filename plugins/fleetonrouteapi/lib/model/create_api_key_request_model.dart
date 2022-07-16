//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class CreateApiKeyRequestModel {
  /// Returns a new [CreateApiKeyRequestModel] instance.
  CreateApiKeyRequestModel({
    @required this.userProfileId,
    @required this.organizationId,
    @required this.version,
    this.extra,
  });

  String userProfileId;

  String organizationId;

  String version;

  Map extra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateApiKeyRequestModel &&
     other.userProfileId == userProfileId &&
     other.organizationId == organizationId &&
     other.version == version &&
     other.extra == extra;

  @override
  int get hashCode =>
    (userProfileId == null ? 0 : userProfileId.hashCode) +
    (organizationId == null ? 0 : organizationId.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (extra == null ? 0 : extra.hashCode);

  @override
  String toString() => 'CreateApiKeyRequestModel[userProfileId=$userProfileId, organizationId=$organizationId, version=$version, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userProfileId'] = userProfileId;
      json[r'organizationId'] = organizationId;
      json[r'version'] = version;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [CreateApiKeyRequestModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateApiKeyRequestModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateApiKeyRequestModel(
        userProfileId: json[r'userProfileId'],
        organizationId: json[r'organizationId'],
        version: json[r'version'],
        extra: json[r'extra'],
    );

  static List<CreateApiKeyRequestModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateApiKeyRequestModel>[]
      : json.map((v) => CreateApiKeyRequestModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateApiKeyRequestModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateApiKeyRequestModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateApiKeyRequestModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateApiKeyRequestModel-objects as value to a dart map
  static Map<String, List<CreateApiKeyRequestModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateApiKeyRequestModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateApiKeyRequestModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

