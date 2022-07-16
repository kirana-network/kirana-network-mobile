//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ScheduleDateModel {
  /// Returns a new [ScheduleDateModel] instance.
  ScheduleDateModel({
    @required this.year,
    @required this.month,
    @required this.date,
    @required this.hour,
    @required this.minute,
    @required this.second,
  });

  int year;

  // minimum: 0
  // maximum: 11
  int month;

  // minimum: 1
  // maximum: 31
  int date;

  // minimum: 0
  // maximum: 23
  int hour;

  // minimum: 0
  // maximum: 59
  int minute;

  // minimum: 0
  // maximum: 59
  int second;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleDateModel &&
          other.year == year &&
          other.month == month &&
          other.date == date &&
          other.hour == hour &&
          other.minute == minute &&
          other.second == second;

  @override
  int get hashCode =>
      (year == null ? 0 : year.hashCode) +
      (month == null ? 0 : month.hashCode) +
      (date == null ? 0 : date.hashCode) +
      (hour == null ? 0 : hour.hashCode) +
      (minute == null ? 0 : minute.hashCode) +
      (second == null ? 0 : second.hashCode);

  @override
  String toString() =>
      'ScheduleDateModel[year=$year, month=$month, date=$date, hour=$hour, minute=$minute, second=$second]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'year'] = year;
    json[r'month'] = month;
    json[r'date'] = date;
    json[r'hour'] = hour;
    json[r'minute'] = minute;
    json[r'second'] = second;
    return json;
  }

  /// Returns a new [ScheduleDateModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ScheduleDateModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : ScheduleDateModel(
          year: json[r'year'],
          month: json[r'month'],
          date: json[r'date'],
          hour: json[r'hour'],
          minute: json[r'minute'],
          second: json[r'second'],
        );

  static List<ScheduleDateModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ScheduleDateModel>[]
          : json
              .map((v) => ScheduleDateModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ScheduleDateModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ScheduleDateModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = ScheduleDateModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ScheduleDateModel-objects as value to a dart map
  static Map<String, List<ScheduleDateModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ScheduleDateModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ScheduleDateModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
