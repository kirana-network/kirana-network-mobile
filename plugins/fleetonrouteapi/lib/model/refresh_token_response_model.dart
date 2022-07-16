//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class RefreshTokenResponseModel {
  /// Returns a new [RefreshTokenResponseModel] instance.
  RefreshTokenResponseModel({
    @required this.accessToken,
    @required this.expiresIn,
    @required this.tokenType,
    @required this.refreshToken,
    @required this.idToken,
    @required this.userId,
  });

  String accessToken;

  String expiresIn;

  String tokenType;

  String refreshToken;

  String idToken;

  String userId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefreshTokenResponseModel &&
          other.accessToken == accessToken &&
          other.expiresIn == expiresIn &&
          other.tokenType == tokenType &&
          other.refreshToken == refreshToken &&
          other.idToken == idToken &&
          other.userId == userId;

  @override
  int get hashCode =>
      (accessToken == null ? 0 : accessToken.hashCode) +
      (expiresIn == null ? 0 : expiresIn.hashCode) +
      (tokenType == null ? 0 : tokenType.hashCode) +
      (refreshToken == null ? 0 : refreshToken.hashCode) +
      (idToken == null ? 0 : idToken.hashCode) +
      (userId == null ? 0 : userId.hashCode);

  @override
  String toString() =>
      'RefreshTokenResponseModel[accessToken=$accessToken, expiresIn=$expiresIn, tokenType=$tokenType, refreshToken=$refreshToken, idToken=$idToken, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'accessToken'] = accessToken;
    json[r'expiresIn'] = expiresIn;
    json[r'tokenType'] = tokenType;
    json[r'refreshToken'] = refreshToken;
    json[r'idToken'] = idToken;
    json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [RefreshTokenResponseModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RefreshTokenResponseModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : RefreshTokenResponseModel(
              accessToken: json[r'accessToken'],
              expiresIn: json[r'expiresIn'],
              tokenType: json[r'tokenType'],
              refreshToken: json[r'refreshToken'],
              idToken: json[r'idToken'],
              userId: json[r'userId'],
            );

  static List<RefreshTokenResponseModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <RefreshTokenResponseModel>[]
          : json
              .map((v) => RefreshTokenResponseModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, RefreshTokenResponseModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, RefreshTokenResponseModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = RefreshTokenResponseModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RefreshTokenResponseModel-objects as value to a dart map
  static Map<String, List<RefreshTokenResponseModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<RefreshTokenResponseModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RefreshTokenResponseModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
