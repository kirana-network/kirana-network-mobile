//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class StripeCardModel {
  /// Returns a new [StripeCardModel] instance.
  StripeCardModel({
    @required this.brand,
    @required this.last4,
    @required this.expiryYear,
    @required this.expiryMonth,
  });

  String brand;

  String last4;

  num expiryYear;

  num expiryMonth;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StripeCardModel &&
          other.brand == brand &&
          other.last4 == last4 &&
          other.expiryYear == expiryYear &&
          other.expiryMonth == expiryMonth;

  @override
  int get hashCode =>
      (brand == null ? 0 : brand.hashCode) +
      (last4 == null ? 0 : last4.hashCode) +
      (expiryYear == null ? 0 : expiryYear.hashCode) +
      (expiryMonth == null ? 0 : expiryMonth.hashCode);

  @override
  String toString() =>
      'StripeCardModel[brand=$brand, last4=$last4, expiryYear=$expiryYear, expiryMonth=$expiryMonth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'brand'] = brand;
    json[r'last4'] = last4;
    json[r'expiryYear'] = expiryYear;
    json[r'expiryMonth'] = expiryMonth;
    return json;
  }

  /// Returns a new [StripeCardModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static StripeCardModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : StripeCardModel(
          brand: json[r'brand'],
          last4: json[r'last4'],
          expiryYear: json[r'expiryYear'] == null
              ? null
              : json[r'expiryYear'].toDouble(),
          expiryMonth: json[r'expiryMonth'] == null
              ? null
              : json[r'expiryMonth'].toDouble(),
        );

  static List<StripeCardModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <StripeCardModel>[]
          : json
              .map((v) => StripeCardModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, StripeCardModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, StripeCardModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = StripeCardModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of StripeCardModel-objects as value to a dart map
  static Map<String, List<StripeCardModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<StripeCardModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = StripeCardModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
