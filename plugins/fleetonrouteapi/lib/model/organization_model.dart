//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class OrganizationModel {
  /// Returns a new [OrganizationModel] instance.
  OrganizationModel({
    @required this.address,
    @required this.updatedAt,
    @required this.createdAt,
    @required this.createdBy,
    @required this.ownerUserProfileId,
    @required this.updatedBy,
    @required this.id,
    @required this.location,
    @required this.name,
    @required this.hasActiveSubscription,
    this.extra,
  });

  String address;

  num updatedAt;

  num createdAt;

  String createdBy;

  String ownerUserProfileId;

  String updatedBy;

  String id;

  LatLngModel location;

  String name;

  bool hasActiveSubscription;

  Map extra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationModel &&
     other.address == address &&
     other.updatedAt == updatedAt &&
     other.createdAt == createdAt &&
     other.createdBy == createdBy &&
     other.ownerUserProfileId == ownerUserProfileId &&
     other.updatedBy == updatedBy &&
     other.id == id &&
     other.location == location &&
     other.name == name &&
     other.hasActiveSubscription == hasActiveSubscription &&
     other.extra == extra;

  @override
  int get hashCode =>
    (address == null ? 0 : address.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (createdBy == null ? 0 : createdBy.hashCode) +
    (ownerUserProfileId == null ? 0 : ownerUserProfileId.hashCode) +
    (updatedBy == null ? 0 : updatedBy.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (hasActiveSubscription == null ? 0 : hasActiveSubscription.hashCode) +
    (extra == null ? 0 : extra.hashCode);

  @override
  String toString() => 'OrganizationModel[address=$address, updatedAt=$updatedAt, createdAt=$createdAt, createdBy=$createdBy, ownerUserProfileId=$ownerUserProfileId, updatedBy=$updatedBy, id=$id, location=$location, name=$name, hasActiveSubscription=$hasActiveSubscription, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'address'] = address;
      json[r'updatedAt'] = updatedAt;
      json[r'createdAt'] = createdAt;
      json[r'createdBy'] = createdBy;
      json[r'ownerUserProfileId'] = ownerUserProfileId;
      json[r'updatedBy'] = updatedBy;
      json[r'id'] = id;
      json[r'location'] = location;
      json[r'name'] = name;
      json[r'hasActiveSubscription'] = hasActiveSubscription;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    return json;
  }

  /// Returns a new [OrganizationModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrganizationModel(
        address: json[r'address'],
        updatedAt: json[r'updatedAt'] == null ?
          null :
          json[r'updatedAt'].toDouble(),
        createdAt: json[r'createdAt'] == null ?
          null :
          json[r'createdAt'].toDouble(),
        createdBy: json[r'createdBy'],
        ownerUserProfileId: json[r'ownerUserProfileId'],
        updatedBy: json[r'updatedBy'],
        id: json[r'id'],
        location: LatLngModel.fromJson(json[r'location']),
        name: json[r'name'],
        hasActiveSubscription: json[r'hasActiveSubscription'],
        extra: json[r'extra'],
    );

  static List<OrganizationModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrganizationModel>[]
      : json.map((v) => OrganizationModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrganizationModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrganizationModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrganizationModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrganizationModel-objects as value to a dart map
  static Map<String, List<OrganizationModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrganizationModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

