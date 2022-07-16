//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class UserProfileQueryFilterModel {
  /// Returns a new [UserProfileQueryFilterModel] instance.
  UserProfileQueryFilterModel({
    this.lastName,
    this.firstName,
    this.email,
    this.organizationId,
    this.createdBy,
    this.updatedBy,
    this.ids = const [],
  });

  String lastName;

  String firstName;

  String email;

  String organizationId;

  String createdBy;

  String updatedBy;

  List<String> ids;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserProfileQueryFilterModel &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.email == email &&
     other.organizationId == organizationId &&
     other.createdBy == createdBy &&
     other.updatedBy == updatedBy &&
     other.ids == ids;

  @override
  int get hashCode =>
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (organizationId == null ? 0 : organizationId.hashCode) +
    (createdBy == null ? 0 : createdBy.hashCode) +
    (updatedBy == null ? 0 : updatedBy.hashCode) +
    (ids == null ? 0 : ids.hashCode);

  @override
  String toString() => 'UserProfileQueryFilterModel[lastName=$lastName, firstName=$firstName, email=$email, organizationId=$organizationId, createdBy=$createdBy, updatedBy=$updatedBy, ids=$ids]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (organizationId != null) {
      json[r'organizationId'] = organizationId;
    }
    if (createdBy != null) {
      json[r'createdBy'] = createdBy;
    }
    if (updatedBy != null) {
      json[r'updatedBy'] = updatedBy;
    }
    if (ids != null) {
      json[r'ids'] = ids;
    }
    return json;
  }

  /// Returns a new [UserProfileQueryFilterModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserProfileQueryFilterModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserProfileQueryFilterModel(
        lastName: json[r'lastName'],
        firstName: json[r'firstName'],
        email: json[r'email'],
        organizationId: json[r'organizationId'],
        createdBy: json[r'createdBy'],
        updatedBy: json[r'updatedBy'],
        ids: json[r'ids'] == null
          ? null
          : (json[r'ids'] as List).cast<String>(),
    );

  static List<UserProfileQueryFilterModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserProfileQueryFilterModel>[]
      : json.map((v) => UserProfileQueryFilterModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserProfileQueryFilterModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserProfileQueryFilterModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserProfileQueryFilterModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserProfileQueryFilterModel-objects as value to a dart map
  static Map<String, List<UserProfileQueryFilterModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserProfileQueryFilterModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserProfileQueryFilterModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

