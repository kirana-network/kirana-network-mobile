//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class UserProfileModel {
  /// Returns a new [UserProfileModel] instance.
  UserProfileModel({
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.id,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.extra,
  });

  String firstName;

  String lastName;

  String email;

  String id;

  /// number of milliseconds since epoch
  num createdAt;

  /// number of milliseconds since epoch
  num updatedAt;

  String createdBy;

  String updatedBy;

  Map extra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserProfileModel &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.email == email &&
     other.id == id &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.createdBy == createdBy &&
     other.updatedBy == updatedBy &&
     other.extra == extra;

  @override
  int get hashCode =>
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (createdBy == null ? 0 : createdBy.hashCode) +
    (updatedBy == null ? 0 : updatedBy.hashCode) +
    (extra == null ? 0 : extra.hashCode);

  @override
  String toString() => 'UserProfileModel[firstName=$firstName, lastName=$lastName, email=$email, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, createdBy=$createdBy, updatedBy=$updatedBy, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'firstName'] = firstName;
      json[r'lastName'] = lastName;
      json[r'email'] = email;
      json[r'id'] = id;
    if (createdAt != null) {
      json[r'createdAt'] = createdAt;
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt;
    }
    if (createdBy != null) {
      json[r'createdBy'] = createdBy;
    }
    if (updatedBy != null) {
      json[r'updatedBy'] = updatedBy;
    }
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [UserProfileModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserProfileModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserProfileModel(
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        email: json[r'email'],
        id: json[r'id'],
        createdAt: json[r'createdAt'] == null ?
          null :
          json[r'createdAt'].toDouble(),
        updatedAt: json[r'updatedAt'] == null ?
          null :
          json[r'updatedAt'].toDouble(),
        createdBy: json[r'createdBy'],
        updatedBy: json[r'updatedBy'],
        extra: json[r'extra'],
    );

  static List<UserProfileModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserProfileModel>[]
      : json.map((v) => UserProfileModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserProfileModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserProfileModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserProfileModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserProfileModel-objects as value to a dart map
  static Map<String, List<UserProfileModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserProfileModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserProfileModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

