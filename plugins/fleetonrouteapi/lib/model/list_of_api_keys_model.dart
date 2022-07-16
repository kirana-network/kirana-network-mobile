//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ListOfApiKeysModel {
  /// Returns a new [ListOfApiKeysModel] instance.
  ListOfApiKeysModel({
    this.records = const [],
    this.total,
  });

  List<ApiKeyModel> records;

  num total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOfApiKeysModel &&
     other.records == records &&
     other.total == total;

  @override
  int get hashCode =>
    (records == null ? 0 : records.hashCode) +
    (total == null ? 0 : total.hashCode);

  @override
  String toString() => 'ListOfApiKeysModel[records=$records, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (records != null) {
      json[r'records'] = records;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    return json;
  }

  /// Returns a new [ListOfApiKeysModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListOfApiKeysModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListOfApiKeysModel(
        records: ApiKeyModel.listFromJson(json[r'records']),
        total: json[r'total'] == null ?
          null :
          json[r'total'].toDouble(),
    );

  static List<ListOfApiKeysModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListOfApiKeysModel>[]
      : json.map((v) => ListOfApiKeysModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, ListOfApiKeysModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListOfApiKeysModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ListOfApiKeysModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListOfApiKeysModel-objects as value to a dart map
  static Map<String, List<ListOfApiKeysModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListOfApiKeysModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListOfApiKeysModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

