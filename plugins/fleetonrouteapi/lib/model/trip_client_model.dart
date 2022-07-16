//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class TripClientModel {
  /// Returns a new [TripClientModel] instance.
  TripClientModel({
    @required this.organizationId,
    this.id,
    this.address,
    this.location,
    @required this.firstName,
    @required this.lastName,
    @required this.homePhone,
    @required this.cellPhone,
    @required this.email,
    @required this.extra,
    @required this.options,
    @required this.notes,
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

  Map extra;

  ClientOptionsModel options;

  String notes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TripClientModel &&
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
     other.options == options &&
     other.notes == notes;

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
    (options == null ? 0 : options.hashCode) +
    (notes == null ? 0 : notes.hashCode);

  @override
  String toString() => 'TripClientModel[organizationId=$organizationId, id=$id, address=$address, location=$location, firstName=$firstName, lastName=$lastName, homePhone=$homePhone, cellPhone=$cellPhone, email=$email, extra=$extra, options=$options, notes=$notes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'organizationId'] = organizationId;
    if (id != null) {
      json[r'id'] = id;
    }
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
      json[r'options'] = options;
      json[r'notes'] = notes;
    return json;
  }

  /// Returns a new [TripClientModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TripClientModel fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TripClientModel(
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
        options: ClientOptionsModel.fromJson(json[r'options']),
        notes: json[r'notes'],
    );

  static List<TripClientModel> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TripClientModel>[]
      : json.map((v) => TripClientModel.fromJson(v)).toList(growable: true == growable);

  static Map<String, TripClientModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripClientModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TripClientModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripClientModel-objects as value to a dart map
  static Map<String, List<TripClientModel>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TripClientModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripClientModel.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

