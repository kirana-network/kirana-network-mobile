//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class StripeCustomerProfileModel {
  /// Returns a new [StripeCustomerProfileModel] instance.
  StripeCustomerProfileModel({
    @required this.customerId,
    @required this.subscriptionId,
    @required this.card,
  });

  String customerId;

  String subscriptionId;

  StripeCardModel card;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StripeCustomerProfileModel &&
          other.customerId == customerId &&
          other.subscriptionId == subscriptionId &&
          other.card == card;

  @override
  int get hashCode =>
      (customerId == null ? 0 : customerId.hashCode) +
      (subscriptionId == null ? 0 : subscriptionId.hashCode) +
      (card == null ? 0 : card.hashCode);

  @override
  String toString() =>
      'StripeCustomerProfileModel[customerId=$customerId, subscriptionId=$subscriptionId, card=$card]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'customerId'] = customerId;
    json[r'subscriptionId'] = subscriptionId;
    json[r'card'] = card;
    return json;
  }

  /// Returns a new [StripeCustomerProfileModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static StripeCustomerProfileModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : StripeCustomerProfileModel(
              customerId: json[r'customerId'],
              subscriptionId: json[r'subscriptionId'],
              card: StripeCardModel.fromJson(json[r'card']),
            );

  static List<StripeCustomerProfileModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <StripeCustomerProfileModel>[]
          : json
              .map((v) => StripeCustomerProfileModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, StripeCustomerProfileModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, StripeCustomerProfileModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = StripeCustomerProfileModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of StripeCustomerProfileModel-objects as value to a dart map
  static Map<String, List<StripeCustomerProfileModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<StripeCustomerProfileModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = StripeCustomerProfileModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
