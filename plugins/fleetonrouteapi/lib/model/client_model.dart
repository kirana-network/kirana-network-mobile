//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ClientModel {
  /// Returns a new [ClientModel] instance.
  ClientModel({
    @required this.organizationId,
    @required this.id,
    this.address,
    this.location,
    @required this.firstName,
    @required this.lastName,
    @required this.homePhone,
    @required this.cellPhone,
    @required this.email,
    @required this.extra,
    @required this.notes,
    @required this.createdBy,
    @required this.updatedBy,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.options,
  });

  String organizationId;

  String id;

  String address;

  LatLngModel location;

  String firstName;

  String lastName;

  String homePhone;

  String cellPhone;

  String email;

  /// Extra client properties can be stored as a Map<String,any>
  Map extra;

  String notes;

  String createdBy;

  String updatedBy;

  num createdAt;

  num updatedAt;

  ClientOptionsModel options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientModel &&
          other.organizationId == organizationId &&
          other.id == id &&
          other.address == address &&
          other.location == location &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.homePhone == homePhone &&
          other.cellPhone == cellPhone &&
          other.email == email &&
          other.extra == extra &&
          other.notes == notes &&
          other.createdBy == createdBy &&
          other.updatedBy == updatedBy &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.options == options;

  @override
  int get hashCode =>
      (organizationId == null ? 0 : organizationId.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (location == null ? 0 : location.hashCode) +
      (firstName == null ? 0 : firstName.hashCode) +
      (lastName == null ? 0 : lastName.hashCode) +
      (homePhone == null ? 0 : homePhone.hashCode) +
      (cellPhone == null ? 0 : cellPhone.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (extra == null ? 0 : extra.hashCode) +
      (notes == null ? 0 : notes.hashCode) +
      (createdBy == null ? 0 : createdBy.hashCode) +
      (updatedBy == null ? 0 : updatedBy.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (options == null ? 0 : options.hashCode);

  @override
  String toString() =>
      'ClientModel[organizationId=$organizationId, id=$id, address=$address, location=$location, firstName=$firstName, lastName=$lastName, homePhone=$homePhone, cellPhone=$cellPhone, email=$email, extra=$extra, notes=$notes, createdBy=$createdBy, updatedBy=$updatedBy, createdAt=$createdAt, updatedAt=$updatedAt, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'organizationId'] = organizationId;
    json[r'id'] = id;
    if (address != null) {
      json[r'address'] = address;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    json[r'firstName'] = firstName;
    json[r'lastName'] = lastName;
    json[r'homePhone'] = homePhone;
    json[r'cellPhone'] = cellPhone;
    json[r'email'] = email;
    json[r'extra'] = extra;
    json[r'notes'] = notes;
    json[r'createdBy'] = createdBy;
    json[r'updatedBy'] = updatedBy;
    json[r'createdAt'] = createdAt;
    json[r'updatedAt'] = updatedAt;
    json[r'options'] = options;
    return json;
  }

  /// Returns a new [ClientModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ClientModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : ClientModel(
          organizationId: json[r'organizationId'],
          id: json[r'id'],
          address: json[r'address'],
          location: LatLngModel.fromJson(json[r'location']),
          firstName: json[r'firstName'],
          lastName: json[r'lastName'],
          homePhone: json[r'homePhone'],
          cellPhone: json[r'cellPhone'],
          email: json[r'email'],
          extra: json[r'extra'],
          notes: json[r'notes'],
          createdBy: json[r'createdBy'],
          updatedBy: json[r'updatedBy'],
          createdAt:
              json[r'createdAt'] == null ? null : json[r'createdAt'].toDouble(),
          updatedAt:
              json[r'updatedAt'] == null ? null : json[r'updatedAt'].toDouble(),
          options: ClientOptionsModel.fromJson(json[r'options']),
        );

  static List<ClientModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ClientModel>[]
          : json
              .map((v) => ClientModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ClientModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ClientModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = ClientModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ClientModel-objects as value to a dart map
  static Map<String, List<ClientModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ClientModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ClientModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
