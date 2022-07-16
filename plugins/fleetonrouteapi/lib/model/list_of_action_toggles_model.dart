//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ListOfActionTogglesModel {
  /// Returns a new [ListOfActionTogglesModel] instance.
  ListOfActionTogglesModel({
    this.records = const [],
    this.total,
  });

  List<ActionToggleModel> records;

  num total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOfActionTogglesModel &&
     other.records == records &&
     other.total == total;

  @override
  int get hashCode =>
    (records == null ? 0 : records.hashCode) +
    (total == null ? 0 : total.hashCode);

  @override
  String toString() => 'ListOfActionTogglesModel[records=$records, total=$total]';

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

  /// Returns a new [ListOfActionTogglesModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListOfActionTogglesModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListOfActionTogglesModel(
        records: ActionToggleModel.listFromJson(json[r'records']),
        total: json[r'total'] == null ?
          null :
          json[r'total'].toDouble(),
    );

  static List<ListOfActionTogglesModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListOfActionTogglesModel>[]
      : json.map((v) => ListOfActionTogglesModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, ListOfActionTogglesModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListOfActionTogglesModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ListOfActionTogglesModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListOfActionTogglesModel-objects as value to a dart map
  static Map<String, List<ListOfActionTogglesModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListOfActionTogglesModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListOfActionTogglesModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

