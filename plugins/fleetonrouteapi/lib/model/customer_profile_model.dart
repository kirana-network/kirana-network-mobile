//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class CustomerProfileModel {
  /// Returns a new [CustomerProfileModel] instance.
  CustomerProfileModel({
    @required this.type,
    @required this.id,
    @required this.userProfileId,
    @required this.stripe,
    @required this.offline,
  });

  CustomerProfileModelTypeEnum type;

  String id;

  String userProfileId;

  StripeCustomerProfileModel stripe;

  OfflineCustomerProfileModel offline;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerProfileModel &&
          other.type == type &&
          other.id == id &&
          other.userProfileId == userProfileId &&
          other.stripe == stripe &&
          other.offline == offline;

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (userProfileId == null ? 0 : userProfileId.hashCode) +
      (stripe == null ? 0 : stripe.hashCode) +
      (offline == null ? 0 : offline.hashCode);

  @override
  String toString() =>
      'CustomerProfileModel[type=$type, id=$id, userProfileId=$userProfileId, stripe=$stripe, offline=$offline]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'type'] = type;
    json[r'id'] = id;
    json[r'userProfileId'] = userProfileId;
    json[r'stripe'] = stripe;
    json[r'offline'] = offline;
    return json;
  }

  /// Returns a new [CustomerProfileModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CustomerProfileModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : CustomerProfileModel(
              type: CustomerProfileModelTypeEnum.fromJson(json[r'type']),
              id: json[r'id'],
              userProfileId: json[r'userProfileId'],
              stripe: StripeCustomerProfileModel.fromJson(json[r'stripe']),
              offline: OfflineCustomerProfileModel.fromJson(json[r'offline']),
            );

  static List<CustomerProfileModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <CustomerProfileModel>[]
          : json
              .map((v) => CustomerProfileModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, CustomerProfileModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, CustomerProfileModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = CustomerProfileModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CustomerProfileModel-objects as value to a dart map
  static Map<String, List<CustomerProfileModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CustomerProfileModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CustomerProfileModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

class CustomerProfileModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CustomerProfileModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STRIPE = CustomerProfileModelTypeEnum._(r'STRIPE');
  static const SHOPIFY = CustomerProfileModelTypeEnum._(r'SHOPIFY');
  static const OFFLINE = CustomerProfileModelTypeEnum._(r'OFFLINE');

  /// List of all possible values in this [enum][CustomerProfileModelTypeEnum].
  static const values = <CustomerProfileModelTypeEnum>[
    STRIPE,
    SHOPIFY,
    OFFLINE,
  ];

  static CustomerProfileModelTypeEnum fromJson(dynamic value) =>
      CustomerProfileModelTypeEnumTypeTransformer().decode(value);

  static List<CustomerProfileModelTypeEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <CustomerProfileModelTypeEnum>[]
          : json
              .map((value) => CustomerProfileModelTypeEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CustomerProfileModelTypeEnum] to String,
/// and [decode] dynamic data back to [CustomerProfileModelTypeEnum].
class CustomerProfileModelTypeEnumTypeTransformer {
  const CustomerProfileModelTypeEnumTypeTransformer._();

  factory CustomerProfileModelTypeEnumTypeTransformer() =>
      _instance ??= CustomerProfileModelTypeEnumTypeTransformer._();

  String encode(CustomerProfileModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CustomerProfileModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CustomerProfileModelTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'STRIPE':
        return CustomerProfileModelTypeEnum.STRIPE;
      case r'SHOPIFY':
        return CustomerProfileModelTypeEnum.SHOPIFY;
      case r'OFFLINE':
        return CustomerProfileModelTypeEnum.OFFLINE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CustomerProfileModelTypeEnumTypeTransformer] instance.
  static CustomerProfileModelTypeEnumTypeTransformer _instance;
}
