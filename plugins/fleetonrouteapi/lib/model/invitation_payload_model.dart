//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class InvitationPayloadModel {
  /// Returns a new [InvitationPayloadModel] instance.
  InvitationPayloadModel({
    @required this.status,
    this.extra,
  });

  InvitationPayloadModelStatusEnum status;

  Map extra;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvitationPayloadModel &&
          other.status == status &&
          other.extra == extra;

  @override
  int get hashCode =>
      (status == null ? 0 : status.hashCode) +
      (extra == null ? 0 : extra.hashCode);

  @override
  String toString() => 'InvitationPayloadModel[status=$status, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'status'] = status;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [InvitationPayloadModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationPayloadModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : InvitationPayloadModel(
              status:
                  InvitationPayloadModelStatusEnum.fromJson(json[r'status']),
              extra: json[r'extra'],
            );

  static List<InvitationPayloadModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <InvitationPayloadModel>[]
          : json
              .map((v) => InvitationPayloadModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, InvitationPayloadModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, InvitationPayloadModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = InvitationPayloadModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InvitationPayloadModel-objects as value to a dart map
  static Map<String, List<InvitationPayloadModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<InvitationPayloadModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InvitationPayloadModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

class InvitationPayloadModelStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InvitationPayloadModelStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = InvitationPayloadModelStatusEnum._(r'PENDING');
  static const ACCEPTED = InvitationPayloadModelStatusEnum._(r'ACCEPTED');
  static const DECLINED = InvitationPayloadModelStatusEnum._(r'DECLINED');

  /// List of all possible values in this [enum][InvitationPayloadModelStatusEnum].
  static const values = <InvitationPayloadModelStatusEnum>[
    PENDING,
    ACCEPTED,
    DECLINED,
  ];

  static InvitationPayloadModelStatusEnum fromJson(dynamic value) =>
      InvitationPayloadModelStatusEnumTypeTransformer().decode(value);

  static List<InvitationPayloadModelStatusEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <InvitationPayloadModelStatusEnum>[]
          : json
              .map((value) => InvitationPayloadModelStatusEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InvitationPayloadModelStatusEnum] to String,
/// and [decode] dynamic data back to [InvitationPayloadModelStatusEnum].
class InvitationPayloadModelStatusEnumTypeTransformer {
  const InvitationPayloadModelStatusEnumTypeTransformer._();

  factory InvitationPayloadModelStatusEnumTypeTransformer() =>
      _instance ??= InvitationPayloadModelStatusEnumTypeTransformer._();

  String encode(InvitationPayloadModelStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvitationPayloadModelStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvitationPayloadModelStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'PENDING':
        return InvitationPayloadModelStatusEnum.PENDING;
      case r'ACCEPTED':
        return InvitationPayloadModelStatusEnum.ACCEPTED;
      case r'DECLINED':
        return InvitationPayloadModelStatusEnum.DECLINED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InvitationPayloadModelStatusEnumTypeTransformer] instance.
  static InvitationPayloadModelStatusEnumTypeTransformer _instance;
}
