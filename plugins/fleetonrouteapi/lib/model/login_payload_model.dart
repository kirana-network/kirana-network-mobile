//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class LoginPayloadModel {
  /// Returns a new [LoginPayloadModel] instance.
  LoginPayloadModel({
    @required this.username,
    @required this.password,
  });

  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginPayloadModel &&
     other.username == username &&
     other.password == password;

  @override
  int get hashCode =>
    (username == null ? 0 : username.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'LoginPayloadModel[username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = username;
      json[r'password'] = password;
    return json;
  }

  /// Returns a new [LoginPayloadModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LoginPayloadModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : LoginPayloadModel(
        username: json[r'username'],
        password: json[r'password'],
    );

  static List<LoginPayloadModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <LoginPayloadModel>[]
      : json.map((v) => LoginPayloadModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, LoginPayloadModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, LoginPayloadModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = LoginPayloadModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of LoginPayloadModel-objects as value to a dart map
  static Map<String, List<LoginPayloadModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LoginPayloadModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = LoginPayloadModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

