//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class CreateInvitationPayloadModel {
  /// Returns a new [CreateInvitationPayloadModel] instance.
  CreateInvitationPayloadModel({
    @required this.email,
    @required this.organizationId,
    this.extra,
  });

  String email;

  String organizationId;

  Map extra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInvitationPayloadModel &&
     other.email == email &&
     other.organizationId == organizationId &&
     other.extra == extra;

  @override
  int get hashCode =>
    (email == null ? 0 : email.hashCode) +
    (organizationId == null ? 0 : organizationId.hashCode) +
    (extra == null ? 0 : extra.hashCode);

  @override
  String toString() => 'CreateInvitationPayloadModel[email=$email, organizationId=$organizationId, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = email;
      json[r'organizationId'] = organizationId;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [CreateInvitationPayloadModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateInvitationPayloadModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateInvitationPayloadModel(
        email: json[r'email'],
        organizationId: json[r'organizationId'],
        extra: json[r'extra'],
    );

  static List<CreateInvitationPayloadModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInvitationPayloadModel>[]
      : json.map((v) => CreateInvitationPayloadModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateInvitationPayloadModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateInvitationPayloadModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateInvitationPayloadModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateInvitationPayloadModel-objects as value to a dart map
  static Map<String, List<CreateInvitationPayloadModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateInvitationPayloadModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateInvitationPayloadModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

