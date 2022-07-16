//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class OrganizationQueryFilterModel {
  /// Returns a new [OrganizationQueryFilterModel] instance.
  OrganizationQueryFilterModel({
    this.ids = const [],
    this.name,
    this.userProfileId,
    this.address,
  });

  List<String> ids;

  String name;

  String userProfileId;

  String address;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationQueryFilterModel &&
     other.ids == ids &&
     other.name == name &&
     other.userProfileId == userProfileId &&
     other.address == address;

  @override
  int get hashCode =>
    (ids == null ? 0 : ids.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (userProfileId == null ? 0 : userProfileId.hashCode) +
    (address == null ? 0 : address.hashCode);

  @override
  String toString() => 'OrganizationQueryFilterModel[ids=$ids, name=$name, userProfileId=$userProfileId, address=$address]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ids != null) {
      json[r'ids'] = ids;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (userProfileId != null) {
      json[r'userProfileId'] = userProfileId;
    }
    if (address != null) {
      json[r'address'] = address;
    }
    return json;
  }

  /// Returns a new [OrganizationQueryFilterModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationQueryFilterModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrganizationQueryFilterModel(
        ids: json[r'ids'] == null
          ? null
          : (json[r'ids'] as List).cast<String>(),
        name: json[r'name'],
        userProfileId: json[r'userProfileId'],
        address: json[r'address'],
    );

  static List<OrganizationQueryFilterModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrganizationQueryFilterModel>[]
      : json.map((v) => OrganizationQueryFilterModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrganizationQueryFilterModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrganizationQueryFilterModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrganizationQueryFilterModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrganizationQueryFilterModel-objects as value to a dart map
  static Map<String, List<OrganizationQueryFilterModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationQueryFilterModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrganizationQueryFilterModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

