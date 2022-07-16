//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class OrganizationUserProfileModel {
  /// Returns a new [OrganizationUserProfileModel] instance.
  OrganizationUserProfileModel({
    @required this.userProfileId,
    @required this.role,
    @required this.status,
    this.extra,
  });

  String userProfileId;

  OrganizationUserProfileModelRoleEnum role;

  OrganizationUserProfileModelStatusEnum status;

  Map extra;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrganizationUserProfileModel &&
          other.userProfileId == userProfileId &&
          other.role == role &&
          other.status == status &&
          other.extra == extra;

  @override
  int get hashCode =>
      (userProfileId == null ? 0 : userProfileId.hashCode) +
      (role == null ? 0 : role.hashCode) +
      (status == null ? 0 : status.hashCode) +
      (extra == null ? 0 : extra.hashCode);

  @override
  String toString() =>
      'OrganizationUserProfileModel[userProfileId=$userProfileId, role=$role, status=$status, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'userProfileId'] = userProfileId;
    json[r'role'] = role;
    json[r'status'] = status;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [OrganizationUserProfileModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationUserProfileModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : OrganizationUserProfileModel(
              userProfileId: json[r'userProfileId'],
              role:
                  OrganizationUserProfileModelRoleEnum.fromJson(json[r'role']),
              status: OrganizationUserProfileModelStatusEnum.fromJson(
                  json[r'status']),
              extra: json[r'extra'],
            );

  static List<OrganizationUserProfileModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OrganizationUserProfileModel>[]
          : json
              .map((v) => OrganizationUserProfileModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, OrganizationUserProfileModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, OrganizationUserProfileModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = OrganizationUserProfileModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrganizationUserProfileModel-objects as value to a dart map
  static Map<String, List<OrganizationUserProfileModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OrganizationUserProfileModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrganizationUserProfileModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

class OrganizationUserProfileModelRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const OrganizationUserProfileModelRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ADMIN = OrganizationUserProfileModelRoleEnum._(r'ADMIN');
  static const DRIVER = OrganizationUserProfileModelRoleEnum._(r'DRIVER');
  static const ASSOCIATE = OrganizationUserProfileModelRoleEnum._(r'ASSOCIATE');

  /// List of all possible values in this [enum][OrganizationUserProfileModelRoleEnum].
  static const values = <OrganizationUserProfileModelRoleEnum>[
    ADMIN,
    DRIVER,
    ASSOCIATE,
  ];

  static OrganizationUserProfileModelRoleEnum fromJson(dynamic value) =>
      OrganizationUserProfileModelRoleEnumTypeTransformer().decode(value);

  static List<OrganizationUserProfileModelRoleEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OrganizationUserProfileModelRoleEnum>[]
          : json
              .map((value) =>
                  OrganizationUserProfileModelRoleEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrganizationUserProfileModelRoleEnum] to String,
/// and [decode] dynamic data back to [OrganizationUserProfileModelRoleEnum].
class OrganizationUserProfileModelRoleEnumTypeTransformer {
  const OrganizationUserProfileModelRoleEnumTypeTransformer._();

  factory OrganizationUserProfileModelRoleEnumTypeTransformer() =>
      _instance ??= OrganizationUserProfileModelRoleEnumTypeTransformer._();

  String encode(OrganizationUserProfileModelRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrganizationUserProfileModelRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrganizationUserProfileModelRoleEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'ADMIN':
        return OrganizationUserProfileModelRoleEnum.ADMIN;
      case r'DRIVER':
        return OrganizationUserProfileModelRoleEnum.DRIVER;
      case r'ASSOCIATE':
        return OrganizationUserProfileModelRoleEnum.ASSOCIATE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrganizationUserProfileModelRoleEnumTypeTransformer] instance.
  static OrganizationUserProfileModelRoleEnumTypeTransformer _instance;
}

class OrganizationUserProfileModelStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrganizationUserProfileModelStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNVERIFIED =
      OrganizationUserProfileModelStatusEnum._(r'UNVERIFIED');
  static const PENDING = OrganizationUserProfileModelStatusEnum._(r'PENDING');
  static const ACTIVE = OrganizationUserProfileModelStatusEnum._(r'ACTIVE');
  static const DISABLED = OrganizationUserProfileModelStatusEnum._(r'DISABLED');
  static const DELETED = OrganizationUserProfileModelStatusEnum._(r'DELETED');

  /// List of all possible values in this [enum][OrganizationUserProfileModelStatusEnum].
  static const values = <OrganizationUserProfileModelStatusEnum>[
    UNVERIFIED,
    PENDING,
    ACTIVE,
    DISABLED,
    DELETED,
  ];

  static OrganizationUserProfileModelStatusEnum fromJson(dynamic value) =>
      OrganizationUserProfileModelStatusEnumTypeTransformer().decode(value);

  static List<OrganizationUserProfileModelStatusEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OrganizationUserProfileModelStatusEnum>[]
          : json
              .map((value) =>
                  OrganizationUserProfileModelStatusEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrganizationUserProfileModelStatusEnum] to String,
/// and [decode] dynamic data back to [OrganizationUserProfileModelStatusEnum].
class OrganizationUserProfileModelStatusEnumTypeTransformer {
  const OrganizationUserProfileModelStatusEnumTypeTransformer._();

  factory OrganizationUserProfileModelStatusEnumTypeTransformer() =>
      _instance ??= OrganizationUserProfileModelStatusEnumTypeTransformer._();

  String encode(OrganizationUserProfileModelStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrganizationUserProfileModelStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrganizationUserProfileModelStatusEnum decode(dynamic data,
      {bool allowNull}) {
    switch (data) {
      case r'UNVERIFIED':
        return OrganizationUserProfileModelStatusEnum.UNVERIFIED;
      case r'PENDING':
        return OrganizationUserProfileModelStatusEnum.PENDING;
      case r'ACTIVE':
        return OrganizationUserProfileModelStatusEnum.ACTIVE;
      case r'DISABLED':
        return OrganizationUserProfileModelStatusEnum.DISABLED;
      case r'DELETED':
        return OrganizationUserProfileModelStatusEnum.DELETED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrganizationUserProfileModelStatusEnumTypeTransformer] instance.
  static OrganizationUserProfileModelStatusEnumTypeTransformer _instance;
}
