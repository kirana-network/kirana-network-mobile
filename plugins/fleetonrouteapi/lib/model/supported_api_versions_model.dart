//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class SupportedApiVersionsModel {
  /// Returns a new [SupportedApiVersionsModel] instance.
  SupportedApiVersionsModel({
    @required this.minimumSupportedVersion,
    @required this.deprecatedVersion,
    @required this.currentVersion,
  });

  /// Clients using this version or lower will need to upgrade before making api calls
  ApiVersionModel minimumSupportedVersion;

  /// Clients using this version or higher are allowed to continue making api calls
  ApiVersionModel deprecatedVersion;

  ApiVersionModel currentVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SupportedApiVersionsModel &&
     other.minimumSupportedVersion == minimumSupportedVersion &&
     other.deprecatedVersion == deprecatedVersion &&
     other.currentVersion == currentVersion;

  @override
  int get hashCode =>
    (minimumSupportedVersion == null ? 0 : minimumSupportedVersion.hashCode) +
    (deprecatedVersion == null ? 0 : deprecatedVersion.hashCode) +
    (currentVersion == null ? 0 : currentVersion.hashCode);

  @override
  String toString() => 'SupportedApiVersionsModel[minimumSupportedVersion=$minimumSupportedVersion, deprecatedVersion=$deprecatedVersion, currentVersion=$currentVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'minimumSupportedVersion'] = minimumSupportedVersion;
      json[r'deprecatedVersion'] = deprecatedVersion;
      json[r'currentVersion'] = currentVersion;
    return json;
  }

  /// Returns a new [SupportedApiVersionsModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SupportedApiVersionsModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SupportedApiVersionsModel(
        minimumSupportedVersion: ApiVersionModel.fromJson(json[r'minimumSupportedVersion']),
        deprecatedVersion: ApiVersionModel.fromJson(json[r'deprecatedVersion']),
        currentVersion: ApiVersionModel.fromJson(json[r'currentVersion']),
    );

  static List<SupportedApiVersionsModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SupportedApiVersionsModel>[]
      : json.map((v) => SupportedApiVersionsModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, SupportedApiVersionsModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SupportedApiVersionsModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SupportedApiVersionsModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SupportedApiVersionsModel-objects as value to a dart map
  static Map<String, List<SupportedApiVersionsModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SupportedApiVersionsModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SupportedApiVersionsModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

