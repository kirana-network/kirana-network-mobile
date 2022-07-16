//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class TripNoteModel {
  /// Returns a new [TripNoteModel] instance.
  TripNoteModel({
    @required this.id,
    @required this.tripId,
    @required this.content,
    @required this.createdBy,
    @required this.createdAt,
    @required this.isPrivate,
    this.metadata,
    this.extra,
  });

  String id;

  String tripId;

  String content;

  String createdBy;

  num createdAt;

  bool isPrivate;

  TripNoteMetadataModel metadata;

  Map extra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TripNoteModel &&
     other.id == id &&
     other.tripId == tripId &&
     other.content == content &&
     other.createdBy == createdBy &&
     other.createdAt == createdAt &&
     other.isPrivate == isPrivate &&
     other.metadata == metadata &&
     other.extra == extra;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (tripId == null ? 0 : tripId.hashCode) +
    (content == null ? 0 : content.hashCode) +
    (createdBy == null ? 0 : createdBy.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (isPrivate == null ? 0 : isPrivate.hashCode) +
    (metadata == null ? 0 : metadata.hashCode) +
    (extra == null ? 0 : extra.hashCode);

  @override
  String toString() => 'TripNoteModel[id=$id, tripId=$tripId, content=$content, createdBy=$createdBy, createdAt=$createdAt, isPrivate=$isPrivate, metadata=$metadata, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'tripId'] = tripId;
      json[r'content'] = content;
      json[r'createdBy'] = createdBy;
      json[r'createdAt'] = createdAt;
      json[r'isPrivate'] = isPrivate;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [TripNoteModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TripNoteModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TripNoteModel(
        id: json[r'id'],
        tripId: json[r'tripId'],
        content: json[r'content'],
        createdBy: json[r'createdBy'],
        createdAt: json[r'createdAt'] == null ?
          null :
          json[r'createdAt'].toDouble(),
        isPrivate: json[r'isPrivate'],
        metadata: TripNoteMetadataModel.fromJson(json[r'metadata']),
        extra: json[r'extra'],
    );

  static List<TripNoteModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TripNoteModel>[]
      : json.map((v) => TripNoteModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, TripNoteModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripNoteModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TripNoteModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripNoteModel-objects as value to a dart map
  static Map<String, List<TripNoteModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TripNoteModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripNoteModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

