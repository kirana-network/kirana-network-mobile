//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class AuthUserModel {
  /// Returns a new [AuthUserModel] instance.
  AuthUserModel({
    @required this.refreshToken,
    this.displayName,
    @required this.email,
    @required this.emailVerified,
    @required this.idToken,
    @required this.uid,
  });

  String refreshToken;

  String displayName;

  String email;

  bool emailVerified;

  String idToken;

  String uid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthUserModel &&
     other.refreshToken == refreshToken &&
     other.displayName == displayName &&
     other.email == email &&
     other.emailVerified == emailVerified &&
     other.idToken == idToken &&
     other.uid == uid;

  @override
  int get hashCode =>
    (refreshToken == null ? 0 : refreshToken.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (emailVerified == null ? 0 : emailVerified.hashCode) +
    (idToken == null ? 0 : idToken.hashCode) +
    (uid == null ? 0 : uid.hashCode);

  @override
  String toString() => 'AuthUserModel[refreshToken=$refreshToken, displayName=$displayName, email=$email, emailVerified=$emailVerified, idToken=$idToken, uid=$uid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'refreshToken'] = refreshToken;
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
      json[r'email'] = email;
      json[r'emailVerified'] = emailVerified;
      json[r'idToken'] = idToken;
      json[r'uid'] = uid;
    return json;
  }

  /// Returns a new [AuthUserModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthUserModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuthUserModel(
        refreshToken: json[r'refreshToken'],
        displayName: json[r'displayName'],
        email: json[r'email'],
        emailVerified: json[r'emailVerified'],
        idToken: json[r'idToken'],
        uid: json[r'uid'],
    );

  static List<AuthUserModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthUserModel>[]
      : json.map((v) => AuthUserModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, AuthUserModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthUserModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AuthUserModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AuthUserModel-objects as value to a dart map
  static Map<String, List<AuthUserModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthUserModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AuthUserModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

