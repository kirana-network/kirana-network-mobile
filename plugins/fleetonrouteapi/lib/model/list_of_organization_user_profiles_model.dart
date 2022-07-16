//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ListOfOrganizationUserProfilesModel {
  /// Returns a new [ListOfOrganizationUserProfilesModel] instance.
  ListOfOrganizationUserProfilesModel({
    this.records = const [],
    this.total,
  });

  List<OrganizationUserProfileModel> records;

  num total;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListOfOrganizationUserProfilesModel &&
          other.records == records &&
          other.total == total;

  @override
  int get hashCode =>
      (records == null ? 0 : records.hashCode) +
      (total == null ? 0 : total.hashCode);

  @override
  String toString() =>
      'ListOfOrganizationUserProfilesModel[records=$records, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (records != null) {
      json[r'records'] = records;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    return json;
  }

  /// Returns a new [ListOfOrganizationUserProfilesModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListOfOrganizationUserProfilesModel fromJson(
          Map<String, dynamic> json) =>
      json == null
          ? null
          : ListOfOrganizationUserProfilesModel(
              records:
                  OrganizationUserProfileModel.listFromJson(json[r'records']),
              total: json[r'total'] == null ? null : json[r'total'].toDouble(),
            );

  static List<ListOfOrganizationUserProfilesModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ListOfOrganizationUserProfilesModel>[]
          : json
              .map((v) => ListOfOrganizationUserProfilesModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ListOfOrganizationUserProfilesModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, ListOfOrganizationUserProfilesModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = ListOfOrganizationUserProfilesModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListOfOrganizationUserProfilesModel-objects as value to a dart map
  static Map<String, List<ListOfOrganizationUserProfilesModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ListOfOrganizationUserProfilesModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListOfOrganizationUserProfilesModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
