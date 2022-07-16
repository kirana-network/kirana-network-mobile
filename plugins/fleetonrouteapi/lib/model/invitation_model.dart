//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class InvitationModel {
  /// Returns a new [InvitationModel] instance.
  InvitationModel({
    @required this.email,
    @required this.invitationId,
    @required this.organizationId,
    this.createdAt,
    @required this.createdBy,
    this.updatedAt,
    @required this.updatedBy,
    @required this.status,
    this.extra,
  });

  String email;

  String invitationId;

  String organizationId;

  /// number of milliseconds since epoch
  num createdAt;

  String createdBy;

  /// number of milliseconds since epoch
  num updatedAt;

  String updatedBy;

  InvitationModelStatusEnum status;

  Map extra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvitationModel &&
     other.email == email &&
     other.invitationId == invitationId &&
     other.organizationId == organizationId &&
     other.createdAt == createdAt &&
     other.createdBy == createdBy &&
     other.updatedAt == updatedAt &&
     other.updatedBy == updatedBy &&
     other.status == status &&
     other.extra == extra;

  @override
  int get hashCode =>
    (email == null ? 0 : email.hashCode) +
    (invitationId == null ? 0 : invitationId.hashCode) +
    (organizationId == null ? 0 : organizationId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (createdBy == null ? 0 : createdBy.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (updatedBy == null ? 0 : updatedBy.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (extra == null ? 0 : extra.hashCode);

  @override
  String toString() => 'InvitationModel[email=$email, invitationId=$invitationId, organizationId=$organizationId, createdAt=$createdAt, createdBy=$createdBy, updatedAt=$updatedAt, updatedBy=$updatedBy, status=$status, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = email;
      json[r'invitationId'] = invitationId;
      json[r'organizationId'] = organizationId;
    if (createdAt != null) {
      json[r'createdAt'] = createdAt;
    }
      json[r'createdBy'] = createdBy;
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt;
    }
      json[r'updatedBy'] = updatedBy;
      json[r'status'] = status;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [InvitationModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InvitationModel(
        email: json[r'email'],
        invitationId: json[r'invitationId'],
        organizationId: json[r'organizationId'],
        createdAt: json[r'createdAt'] == null ?
          null :
          json[r'createdAt'].toDouble(),
        createdBy: json[r'createdBy'],
        updatedAt: json[r'updatedAt'] == null ?
          null :
          json[r'updatedAt'].toDouble(),
        updatedBy: json[r'updatedBy'],
        status: InvitationModelStatusEnum.fromJson(json[r'status']),
        extra: json[r'extra'],
    );

  static List<InvitationModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InvitationModel>[]
      : json.map((v) => InvitationModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, InvitationModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InvitationModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InvitationModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InvitationModel-objects as value to a dart map
  static Map<String, List<InvitationModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InvitationModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InvitationModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InvitationModelStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InvitationModelStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = InvitationModelStatusEnum._(r'PENDING');
  static const ACCEPTED = InvitationModelStatusEnum._(r'ACCEPTED');
  static const DECLINED = InvitationModelStatusEnum._(r'DECLINED');

  /// List of all possible values in this [enum][InvitationModelStatusEnum].
  static const values = <InvitationModelStatusEnum>[
    PENDING,
    ACCEPTED,
    DECLINED,
  ];

  static InvitationModelStatusEnum fromJson(dynamic value) =>
    InvitationModelStatusEnumTypeTransformer().decode(value);

  static List<InvitationModelStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InvitationModelStatusEnum>[]
      : json
          .map((value) => InvitationModelStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InvitationModelStatusEnum] to String,
/// and [decode] dynamic data back to [InvitationModelStatusEnum].
class InvitationModelStatusEnumTypeTransformer {
  const InvitationModelStatusEnumTypeTransformer._();

  factory InvitationModelStatusEnumTypeTransformer() => _instance ??= InvitationModelStatusEnumTypeTransformer._();

  String encode(InvitationModelStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvitationModelStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvitationModelStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'PENDING': return InvitationModelStatusEnum.PENDING;
      case r'ACCEPTED': return InvitationModelStatusEnum.ACCEPTED;
      case r'DECLINED': return InvitationModelStatusEnum.DECLINED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InvitationModelStatusEnumTypeTransformer] instance.
  static InvitationModelStatusEnumTypeTransformer _instance;
}

