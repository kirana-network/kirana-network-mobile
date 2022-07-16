//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ApiVersionModel {
  /// Returns a new [ApiVersionModel] instance.
  ApiVersionModel({
    @required this.major,
    @required this.minor,
    @required this.patch_,
    @required this.full,
  });

  int major;

  int minor;

  int patch_;

  String full;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiVersionModel &&
          other.major == major &&
          other.minor == minor &&
          other.patch_ == patch_ &&
          other.full == full;

  @override
  int get hashCode =>
      (major == null ? 0 : major.hashCode) +
      (minor == null ? 0 : minor.hashCode) +
      (patch_ == null ? 0 : patch_.hashCode) +
      (full == null ? 0 : full.hashCode);

  @override
  String toString() =>
      'ApiVersionModel[major=$major, minor=$minor, patch_=$patch_, full=$full]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'major'] = major;
    json[r'minor'] = minor;
    json[r'patch'] = patch_;
    json[r'full'] = full;
    return json;
  }

  /// Returns a new [ApiVersionModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApiVersionModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : ApiVersionModel(
          major: json[r'major'],
          minor: json[r'minor'],
          patch_: json[r'patch'],
          full: json[r'full'],
        );

  static List<ApiVersionModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ApiVersionModel>[]
          : json
              .map((v) => ApiVersionModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ApiVersionModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ApiVersionModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = ApiVersionModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ApiVersionModel-objects as value to a dart map
  static Map<String, List<ApiVersionModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ApiVersionModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ApiVersionModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
