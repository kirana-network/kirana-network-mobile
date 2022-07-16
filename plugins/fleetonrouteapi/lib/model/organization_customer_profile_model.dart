//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class OrganizationCustomerProfileModel {
  /// Returns a new [OrganizationCustomerProfileModel] instance.
  OrganizationCustomerProfileModel({
    @required this.type,
    @required this.id,
    @required this.userProfileId,
    @required this.stripe,
    @required this.offline,
    @required this.organizationId,
  });

  OrganizationCustomerProfileModelTypeEnum type;

  String id;

  String userProfileId;

  StripeCustomerProfileModel stripe;

  OfflineCustomerProfileModel offline;

  String organizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationCustomerProfileModel &&
     other.type == type &&
     other.id == id &&
     other.userProfileId == userProfileId &&
     other.stripe == stripe &&
     other.offline == offline &&
     other.organizationId == organizationId;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (userProfileId == null ? 0 : userProfileId.hashCode) +
    (stripe == null ? 0 : stripe.hashCode) +
    (offline == null ? 0 : offline.hashCode) +
    (organizationId == null ? 0 : organizationId.hashCode);

  @override
  String toString() => 'OrganizationCustomerProfileModel[type=$type, id=$id, userProfileId=$userProfileId, stripe=$stripe, offline=$offline, organizationId=$organizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
      json[r'id'] = id;
      json[r'userProfileId'] = userProfileId;
      json[r'stripe'] = stripe;
      json[r'offline'] = offline;
      json[r'organizationId'] = organizationId;
    return json;
  }

  /// Returns a new [OrganizationCustomerProfileModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationCustomerProfileModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrganizationCustomerProfileModel(
        type: OrganizationCustomerProfileModelTypeEnum.fromJson(json[r'type']),
        id: json[r'id'],
        userProfileId: json[r'userProfileId'],
        stripe: StripeCustomerProfileModel.fromJson(json[r'stripe']),
        offline: OfflineCustomerProfileModel.fromJson(json[r'offline']),
        organizationId: json[r'organizationId'],
    );

  static List<OrganizationCustomerProfileModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrganizationCustomerProfileModel>[]
      : json.map((v) => OrganizationCustomerProfileModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrganizationCustomerProfileModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrganizationCustomerProfileModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrganizationCustomerProfileModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrganizationCustomerProfileModel-objects as value to a dart map
  static Map<String, List<OrganizationCustomerProfileModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationCustomerProfileModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrganizationCustomerProfileModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class OrganizationCustomerProfileModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OrganizationCustomerProfileModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STRIPE = OrganizationCustomerProfileModelTypeEnum._(r'STRIPE');
  static const SHOPIFY = OrganizationCustomerProfileModelTypeEnum._(r'SHOPIFY');
  static const OFFLINE = OrganizationCustomerProfileModelTypeEnum._(r'OFFLINE');

  /// List of all possible values in this [enum][OrganizationCustomerProfileModelTypeEnum].
  static const values = <OrganizationCustomerProfileModelTypeEnum>[
    STRIPE,
    SHOPIFY,
    OFFLINE,
  ];

  static OrganizationCustomerProfileModelTypeEnum fromJson(dynamic value) =>
    OrganizationCustomerProfileModelTypeEnumTypeTransformer().decode(value);

  static List<OrganizationCustomerProfileModelTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrganizationCustomerProfileModelTypeEnum>[]
      : json
          .map((value) => OrganizationCustomerProfileModelTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrganizationCustomerProfileModelTypeEnum] to String,
/// and [decode] dynamic data back to [OrganizationCustomerProfileModelTypeEnum].
class OrganizationCustomerProfileModelTypeEnumTypeTransformer {
  const OrganizationCustomerProfileModelTypeEnumTypeTransformer._();

  factory OrganizationCustomerProfileModelTypeEnumTypeTransformer() => _instance ??= OrganizationCustomerProfileModelTypeEnumTypeTransformer._();

  String encode(OrganizationCustomerProfileModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrganizationCustomerProfileModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrganizationCustomerProfileModelTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'STRIPE': return OrganizationCustomerProfileModelTypeEnum.STRIPE;
      case r'SHOPIFY': return OrganizationCustomerProfileModelTypeEnum.SHOPIFY;
      case r'OFFLINE': return OrganizationCustomerProfileModelTypeEnum.OFFLINE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrganizationCustomerProfileModelTypeEnumTypeTransformer] instance.
  static OrganizationCustomerProfileModelTypeEnumTypeTransformer _instance;
}

