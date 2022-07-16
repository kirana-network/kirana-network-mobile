//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class OfflineCustomerProfileModel {
  /// Returns a new [OfflineCustomerProfileModel] instance.
  OfflineCustomerProfileModel({
    @required this.notes,
  });

  String notes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OfflineCustomerProfileModel &&
     other.notes == notes;

  @override
  int get hashCode =>
    (notes == null ? 0 : notes.hashCode);

  @override
  String toString() => 'OfflineCustomerProfileModel[notes=$notes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'notes'] = notes;
    return json;
  }

  /// Returns a new [OfflineCustomerProfileModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OfflineCustomerProfileModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OfflineCustomerProfileModel(
        notes: json[r'notes'],
    );

  static List<OfflineCustomerProfileModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OfflineCustomerProfileModel>[]
      : json.map((v) => OfflineCustomerProfileModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, OfflineCustomerProfileModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OfflineCustomerProfileModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OfflineCustomerProfileModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OfflineCustomerProfileModel-objects as value to a dart map
  static Map<String, List<OfflineCustomerProfileModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OfflineCustomerProfileModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OfflineCustomerProfileModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

