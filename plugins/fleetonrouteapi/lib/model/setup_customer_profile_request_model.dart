//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class SetupCustomerProfileRequestModel {
  /// Returns a new [SetupCustomerProfileRequestModel] instance.
  SetupCustomerProfileRequestModel({
    @required this.type,
    @required this.userProfileId,
  });

  SetupCustomerProfileRequestModelTypeEnum type;

  String userProfileId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetupCustomerProfileRequestModel &&
     other.type == type &&
     other.userProfileId == userProfileId;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (userProfileId == null ? 0 : userProfileId.hashCode);

  @override
  String toString() => 'SetupCustomerProfileRequestModel[type=$type, userProfileId=$userProfileId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
      json[r'userProfileId'] = userProfileId;
    return json;
  }

  /// Returns a new [SetupCustomerProfileRequestModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SetupCustomerProfileRequestModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SetupCustomerProfileRequestModel(
        type: SetupCustomerProfileRequestModelTypeEnum.fromJson(json[r'type']),
        userProfileId: json[r'userProfileId'],
    );

  static List<SetupCustomerProfileRequestModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SetupCustomerProfileRequestModel>[]
      : json.map((v) => SetupCustomerProfileRequestModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, SetupCustomerProfileRequestModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SetupCustomerProfileRequestModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SetupCustomerProfileRequestModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SetupCustomerProfileRequestModel-objects as value to a dart map
  static Map<String, List<SetupCustomerProfileRequestModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SetupCustomerProfileRequestModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SetupCustomerProfileRequestModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class SetupCustomerProfileRequestModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SetupCustomerProfileRequestModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STRIPE = SetupCustomerProfileRequestModelTypeEnum._(r'STRIPE');
  static const SHOPIFY = SetupCustomerProfileRequestModelTypeEnum._(r'SHOPIFY');
  static const OFFLINE = SetupCustomerProfileRequestModelTypeEnum._(r'OFFLINE');

  /// List of all possible values in this [enum][SetupCustomerProfileRequestModelTypeEnum].
  static const values = <SetupCustomerProfileRequestModelTypeEnum>[
    STRIPE,
    SHOPIFY,
    OFFLINE,
  ];

  static SetupCustomerProfileRequestModelTypeEnum fromJson(dynamic value) =>
    SetupCustomerProfileRequestModelTypeEnumTypeTransformer().decode(value);

  static List<SetupCustomerProfileRequestModelTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SetupCustomerProfileRequestModelTypeEnum>[]
      : json
          .map((value) => SetupCustomerProfileRequestModelTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [SetupCustomerProfileRequestModelTypeEnum] to String,
/// and [decode] dynamic data back to [SetupCustomerProfileRequestModelTypeEnum].
class SetupCustomerProfileRequestModelTypeEnumTypeTransformer {
  const SetupCustomerProfileRequestModelTypeEnumTypeTransformer._();

  factory SetupCustomerProfileRequestModelTypeEnumTypeTransformer() => _instance ??= SetupCustomerProfileRequestModelTypeEnumTypeTransformer._();

  String encode(SetupCustomerProfileRequestModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SetupCustomerProfileRequestModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SetupCustomerProfileRequestModelTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'STRIPE': return SetupCustomerProfileRequestModelTypeEnum.STRIPE;
      case r'SHOPIFY': return SetupCustomerProfileRequestModelTypeEnum.SHOPIFY;
      case r'OFFLINE': return SetupCustomerProfileRequestModelTypeEnum.OFFLINE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [SetupCustomerProfileRequestModelTypeEnumTypeTransformer] instance.
  static SetupCustomerProfileRequestModelTypeEnumTypeTransformer _instance;
}

