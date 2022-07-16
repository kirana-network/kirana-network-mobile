//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ActionToggleModel {
  /// Returns a new [ActionToggleModel] instance.
  ActionToggleModel({
    @required this.action,
    @required this.allowed,
  });

  String action;

  String allowed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActionToggleModel &&
          other.action == action &&
          other.allowed == allowed;

  @override
  int get hashCode =>
      (action == null ? 0 : action.hashCode) +
      (allowed == null ? 0 : allowed.hashCode);

  @override
  String toString() => 'ActionToggleModel[action=$action, allowed=$allowed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'action'] = action;
    json[r'allowed'] = allowed;
    return json;
  }

  /// Returns a new [ActionToggleModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ActionToggleModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : ActionToggleModel(
          action: json[r'action'],
          allowed: json[r'allowed'],
        );

  static List<ActionToggleModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ActionToggleModel>[]
          : json
              .map((v) => ActionToggleModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ActionToggleModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ActionToggleModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = ActionToggleModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ActionToggleModel-objects as value to a dart map
  static Map<String, List<ActionToggleModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ActionToggleModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ActionToggleModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
