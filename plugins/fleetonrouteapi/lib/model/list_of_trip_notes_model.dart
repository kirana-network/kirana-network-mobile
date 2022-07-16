//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ListOfTripNotesModel {
  /// Returns a new [ListOfTripNotesModel] instance.
  ListOfTripNotesModel({
    this.records = const [],
    this.total,
  });

  List<TripNoteModel> records;

  num total;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListOfTripNotesModel &&
          other.records == records &&
          other.total == total;

  @override
  int get hashCode =>
      (records == null ? 0 : records.hashCode) +
      (total == null ? 0 : total.hashCode);

  @override
  String toString() => 'ListOfTripNotesModel[records=$records, total=$total]';

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

  /// Returns a new [ListOfTripNotesModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListOfTripNotesModel fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : ListOfTripNotesModel(
              records: TripNoteModel.listFromJson(json[r'records']),
              total: json[r'total'] == null ? null : json[r'total'].toDouble(),
            );

  static List<ListOfTripNotesModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ListOfTripNotesModel>[]
          : json
              .map((v) => ListOfTripNotesModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ListOfTripNotesModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, ListOfTripNotesModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = ListOfTripNotesModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListOfTripNotesModel-objects as value to a dart map
  static Map<String, List<ListOfTripNotesModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ListOfTripNotesModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListOfTripNotesModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
