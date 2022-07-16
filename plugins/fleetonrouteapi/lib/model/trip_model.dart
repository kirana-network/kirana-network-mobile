//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class TripModel {
  /// Returns a new [TripModel] instance.
  TripModel({
    @required this.id,
    @required this.organizationId,
    this.gpsUnitId,
    this.userProfileId,
    @required this.client,
    this.address,
    this.location,
    @required this.scheduledAt,
    @required this.tripStatus,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.createdBy,
    @required this.updatedBy,
    @required this.tripType,
    this.extra,
    this.options,
  });

  String id;

  String organizationId;

  String gpsUnitId;

  String userProfileId;

  TripClientModel client;

  String address;

  LatLngModel location;

  /// The scheduled date and time for this trip.
  ScheduleDateModel scheduledAt;

  TripModelTripStatusEnum tripStatus;

  num createdAt;

  num updatedAt;

  String createdBy;

  String updatedBy;

  TripModelTripTypeEnum tripType;

  Map extra;

  TripOptionsModel options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TripModel &&
          other.id == id &&
          other.organizationId == organizationId &&
          other.gpsUnitId == gpsUnitId &&
          other.userProfileId == userProfileId &&
          other.client == client &&
          other.address == address &&
          other.location == location &&
          other.scheduledAt == scheduledAt &&
          other.tripStatus == tripStatus &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.createdBy == createdBy &&
          other.updatedBy == updatedBy &&
          other.tripType == tripType &&
          other.extra == extra &&
          other.options == options;

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (organizationId == null ? 0 : organizationId.hashCode) +
      (gpsUnitId == null ? 0 : gpsUnitId.hashCode) +
      (userProfileId == null ? 0 : userProfileId.hashCode) +
      (client == null ? 0 : client.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (location == null ? 0 : location.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      (tripStatus == null ? 0 : tripStatus.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (createdBy == null ? 0 : createdBy.hashCode) +
      (updatedBy == null ? 0 : updatedBy.hashCode) +
      (tripType == null ? 0 : tripType.hashCode) +
      (extra == null ? 0 : extra.hashCode) +
      (options == null ? 0 : options.hashCode);

  @override
  String toString() =>
      'TripModel[id=$id, organizationId=$organizationId, gpsUnitId=$gpsUnitId, userProfileId=$userProfileId, client=$client, address=$address, location=$location, scheduledAt=$scheduledAt, tripStatus=$tripStatus, createdAt=$createdAt, updatedAt=$updatedAt, createdBy=$createdBy, updatedBy=$updatedBy, tripType=$tripType, extra=$extra, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    json[r'organizationId'] = organizationId;
    if (gpsUnitId != null) {
      json[r'gpsUnitId'] = gpsUnitId;
    }
    if (userProfileId != null) {
      json[r'userProfileId'] = userProfileId;
    }
    json[r'client'] = client;
    if (address != null) {
      json[r'address'] = address;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    json[r'scheduledAt'] = scheduledAt;
    json[r'tripStatus'] = tripStatus;
    json[r'createdAt'] = createdAt;
    json[r'updatedAt'] = updatedAt;
    json[r'createdBy'] = createdBy;
    json[r'updatedBy'] = updatedBy;
    json[r'tripType'] = tripType;
    if (extra != null) {
      json[r'extra'] = extra;
    }
    if (options != null) {
      json[r'options'] = options;
    }
    return json;
  }

  /// Returns a new [TripModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TripModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : TripModel(
          id: json[r'id'],
          organizationId: json[r'organizationId'],
          gpsUnitId: json[r'gpsUnitId'],
          userProfileId: json[r'userProfileId'],
          client: TripClientModel.fromJson(json[r'client']),
          address: json[r'address'],
          location: LatLngModel.fromJson(json[r'location']),
          scheduledAt: ScheduleDateModel.fromJson(json[r'scheduledAt']),
          tripStatus: TripModelTripStatusEnum.fromJson(json[r'tripStatus']),
          createdAt:
              json[r'createdAt'] == null ? null : json[r'createdAt'].toDouble(),
          updatedAt:
              json[r'updatedAt'] == null ? null : json[r'updatedAt'].toDouble(),
          createdBy: json[r'createdBy'],
          updatedBy: json[r'updatedBy'],
          tripType: TripModelTripTypeEnum.fromJson(json[r'tripType']),
          extra: json[r'extra'],
          options: TripOptionsModel.fromJson(json[r'options']),
        );

  static List<TripModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <TripModel>[]
          : json
              .map((v) => TripModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, TripModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TripModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripModel-objects as value to a dart map
  static Map<String, List<TripModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<TripModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

class TripModelTripStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TripModelTripStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = TripModelTripStatusEnum._(r'PENDING');
  static const SCHEDULED = TripModelTripStatusEnum._(r'SCHEDULED');
  static const ON_ROUTE = TripModelTripStatusEnum._(r'ON_ROUTE');
  static const COMPLETED = TripModelTripStatusEnum._(r'COMPLETED');
  static const CANCELLED = TripModelTripStatusEnum._(r'CANCELLED');

  /// List of all possible values in this [enum][TripModelTripStatusEnum].
  static const values = <TripModelTripStatusEnum>[
    PENDING,
    SCHEDULED,
    ON_ROUTE,
    COMPLETED,
    CANCELLED,
  ];

  static TripModelTripStatusEnum fromJson(dynamic value) =>
      TripModelTripStatusEnumTypeTransformer().decode(value);

  static List<TripModelTripStatusEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <TripModelTripStatusEnum>[]
          : json
              .map((value) => TripModelTripStatusEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TripModelTripStatusEnum] to String,
/// and [decode] dynamic data back to [TripModelTripStatusEnum].
class TripModelTripStatusEnumTypeTransformer {
  const TripModelTripStatusEnumTypeTransformer._();

  factory TripModelTripStatusEnumTypeTransformer() =>
      _instance ??= TripModelTripStatusEnumTypeTransformer._();

  String encode(TripModelTripStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TripModelTripStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TripModelTripStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'PENDING':
        return TripModelTripStatusEnum.PENDING;
      case r'SCHEDULED':
        return TripModelTripStatusEnum.SCHEDULED;
      case r'ON_ROUTE':
        return TripModelTripStatusEnum.ON_ROUTE;
      case r'COMPLETED':
        return TripModelTripStatusEnum.COMPLETED;
      case r'CANCELLED':
        return TripModelTripStatusEnum.CANCELLED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TripModelTripStatusEnumTypeTransformer] instance.
  static TripModelTripStatusEnumTypeTransformer _instance;
}

class TripModelTripTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TripModelTripTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = TripModelTripTypeEnum._(r'NONE');
  static const DELIVERY = TripModelTripTypeEnum._(r'DELIVERY');

  /// List of all possible values in this [enum][TripModelTripTypeEnum].
  static const values = <TripModelTripTypeEnum>[
    NONE,
    DELIVERY,
  ];

  static TripModelTripTypeEnum fromJson(dynamic value) =>
      TripModelTripTypeEnumTypeTransformer().decode(value);

  static List<TripModelTripTypeEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <TripModelTripTypeEnum>[]
          : json
              .map((value) => TripModelTripTypeEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TripModelTripTypeEnum] to String,
/// and [decode] dynamic data back to [TripModelTripTypeEnum].
class TripModelTripTypeEnumTypeTransformer {
  const TripModelTripTypeEnumTypeTransformer._();

  factory TripModelTripTypeEnumTypeTransformer() =>
      _instance ??= TripModelTripTypeEnumTypeTransformer._();

  String encode(TripModelTripTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TripModelTripTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TripModelTripTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'NONE':
        return TripModelTripTypeEnum.NONE;
      case r'DELIVERY':
        return TripModelTripTypeEnum.DELIVERY;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TripModelTripTypeEnumTypeTransformer] instance.
  static TripModelTripTypeEnumTypeTransformer _instance;
}
