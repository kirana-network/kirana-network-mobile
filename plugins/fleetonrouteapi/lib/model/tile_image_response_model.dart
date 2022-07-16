//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class TileImageResponseModel {
  /// Returns a new [TileImageResponseModel] instance.
  TileImageResponseModel({
    @required this.url,
  });

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TileImageResponseModel &&
     other.url == url;

  @override
  int get hashCode =>
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'TileImageResponseModel[url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = url;
    return json;
  }

  /// Returns a new [TileImageResponseModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TileImageResponseModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TileImageResponseModel(
        url: json[r'url'],
    );

  static List<TileImageResponseModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TileImageResponseModel>[]
      : json.map((v) => TileImageResponseModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, TileImageResponseModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TileImageResponseModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TileImageResponseModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TileImageResponseModel-objects as value to a dart map
  static Map<String, List<TileImageResponseModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TileImageResponseModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TileImageResponseModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

