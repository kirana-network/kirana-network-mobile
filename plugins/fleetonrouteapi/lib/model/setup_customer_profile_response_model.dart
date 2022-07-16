//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class SetupCustomerProfileResponseModel {
  /// Returns a new [SetupCustomerProfileResponseModel] instance.
  SetupCustomerProfileResponseModel({
    this.url,
  });

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetupCustomerProfileResponseModel &&
     other.url == url;

  @override
  int get hashCode =>
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'SetupCustomerProfileResponseModel[url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [SetupCustomerProfileResponseModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SetupCustomerProfileResponseModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SetupCustomerProfileResponseModel(
        url: json[r'url'],
    );

  static List<SetupCustomerProfileResponseModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SetupCustomerProfileResponseModel>[]
      : json.map((v) => SetupCustomerProfileResponseModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, SetupCustomerProfileResponseModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SetupCustomerProfileResponseModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SetupCustomerProfileResponseModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SetupCustomerProfileResponseModel-objects as value to a dart map
  static Map<String, List<SetupCustomerProfileResponseModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SetupCustomerProfileResponseModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SetupCustomerProfileResponseModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

