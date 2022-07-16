//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class UserProfileOrganizationModel {
  /// Returns a new [UserProfileOrganizationModel] instance.
  UserProfileOrganizationModel({
    @required this.organizationId,
    this.role,
    this.status,
    this.extra,
  });

  String organizationId;

  UserProfileOrganizationModelRoleEnum role;

  UserProfileOrganizationModelStatusEnum status;

  Map extra;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserProfileOrganizationModel &&
          other.organizationId == organizationId &&
          other.role == role &&
          other.status == status &&
          other.extra == extra;

  @override
  int get hashCode =>
      (organizationId == null ? 0 : organizationId.hashCode) +
      (role == null ? 0 : role.hashCode) +
      (status == null ? 0 : status.hashCode) +
      (extra == null ? 0 : extra.hashCode);

  @override
  String toString() =>
      'UserProfileOrganizationModel[organizationId=$organizationId, role=$role, status=$status, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'organizationId'] = organizationId;
    if (role != null) {
      json[r'role'] = role;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [UserProfileOrganizationModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserProfileOrganizationModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : UserProfileOrganizationModel(
              organizationId: json[r'organizationId'],
              role:
                  UserProfileOrganizationModelRoleEnum.fromJson(json[r'role']),
              status: UserProfileOrganizationModelStatusEnum.fromJson(
                  json[r'status']),
              extra: json[r'extra'],
            );

  static List<UserProfileOrganizationModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <UserProfileOrganizationModel>[]
          : json
              .map((v) => UserProfileOrganizationModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, UserProfileOrganizationModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, UserProfileOrganizationModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = UserProfileOrganizationModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserProfileOrganizationModel-objects as value to a dart map
  static Map<String, List<UserProfileOrganizationModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<UserProfileOrganizationModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserProfileOrganizationModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

class UserProfileOrganizationModelRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const UserProfileOrganizationModelRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ADMIN = UserProfileOrganizationModelRoleEnum._(r'ADMIN');
  static const DRIVER = UserProfileOrganizationModelRoleEnum._(r'DRIVER');
  static const ASSOCIATE = UserProfileOrganizationModelRoleEnum._(r'ASSOCIATE');

  /// List of all possible values in this [enum][UserProfileOrganizationModelRoleEnum].
  static const values = <UserProfileOrganizationModelRoleEnum>[
    ADMIN,
    DRIVER,
    ASSOCIATE,
  ];

  static UserProfileOrganizationModelRoleEnum fromJson(dynamic value) =>
      UserProfileOrganizationModelRoleEnumTypeTransformer().decode(value);

  static List<UserProfileOrganizationModelRoleEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <UserProfileOrganizationModelRoleEnum>[]
          : json
              .map((value) =>
                  UserProfileOrganizationModelRoleEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UserProfileOrganizationModelRoleEnum] to String,
/// and [decode] dynamic data back to [UserProfileOrganizationModelRoleEnum].
class UserProfileOrganizationModelRoleEnumTypeTransformer {
  const UserProfileOrganizationModelRoleEnumTypeTransformer._();

  factory UserProfileOrganizationModelRoleEnumTypeTransformer() =>
      _instance ??= UserProfileOrganizationModelRoleEnumTypeTransformer._();

  String encode(UserProfileOrganizationModelRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserProfileOrganizationModelRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserProfileOrganizationModelRoleEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'ADMIN':
        return UserProfileOrganizationModelRoleEnum.ADMIN;
      case r'DRIVER':
        return UserProfileOrganizationModelRoleEnum.DRIVER;
      case r'ASSOCIATE':
        return UserProfileOrganizationModelRoleEnum.ASSOCIATE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UserProfileOrganizationModelRoleEnumTypeTransformer] instance.
  static UserProfileOrganizationModelRoleEnumTypeTransformer _instance;
}

class UserProfileOrganizationModelStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UserProfileOrganizationModelStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNVERIFIED =
      UserProfileOrganizationModelStatusEnum._(r'UNVERIFIED');
  static const PENDING = UserProfileOrganizationModelStatusEnum._(r'PENDING');
  static const ACTIVE = UserProfileOrganizationModelStatusEnum._(r'ACTIVE');
  static const DISABLED = UserProfileOrganizationModelStatusEnum._(r'DISABLED');
  static const DELETED = UserProfileOrganizationModelStatusEnum._(r'DELETED');

  /// List of all possible values in this [enum][UserProfileOrganizationModelStatusEnum].
  static const values = <UserProfileOrganizationModelStatusEnum>[
    UNVERIFIED,
    PENDING,
    ACTIVE,
    DISABLED,
    DELETED,
  ];

  static UserProfileOrganizationModelStatusEnum fromJson(dynamic value) =>
      UserProfileOrganizationModelStatusEnumTypeTransformer().decode(value);

  static List<UserProfileOrganizationModelStatusEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <UserProfileOrganizationModelStatusEnum>[]
          : json
              .map((value) =>
                  UserProfileOrganizationModelStatusEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UserProfileOrganizationModelStatusEnum] to String,
/// and [decode] dynamic data back to [UserProfileOrganizationModelStatusEnum].
class UserProfileOrganizationModelStatusEnumTypeTransformer {
  const UserProfileOrganizationModelStatusEnumTypeTransformer._();

  factory UserProfileOrganizationModelStatusEnumTypeTransformer() =>
      _instance ??= UserProfileOrganizationModelStatusEnumTypeTransformer._();

  String encode(UserProfileOrganizationModelStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserProfileOrganizationModelStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserProfileOrganizationModelStatusEnum decode(dynamic data,
      {bool allowNull}) {
    switch (data) {
      case r'UNVERIFIED':
        return UserProfileOrganizationModelStatusEnum.UNVERIFIED;
      case r'PENDING':
        return UserProfileOrganizationModelStatusEnum.PENDING;
      case r'ACTIVE':
        return UserProfileOrganizationModelStatusEnum.ACTIVE;
      case r'DISABLED':
        return UserProfileOrganizationModelStatusEnum.DISABLED;
      case r'DELETED':
        return UserProfileOrganizationModelStatusEnum.DELETED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UserProfileOrganizationModelStatusEnumTypeTransformer] instance.
  static UserProfileOrganizationModelStatusEnumTypeTransformer _instance;
}
