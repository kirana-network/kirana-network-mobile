//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class TripProofOfDeliveryModel {
  /// Returns a new [TripProofOfDeliveryModel] instance.
  TripProofOfDeliveryModel({
    @required this.tripId,
    @required this.type,
    this.recipientName,
    this.photoUrl,
    this.photofile,
    this.createdBy,
    this.createdAt,
  });

  String tripId;

  TripProofOfDeliveryModelTypeEnum type;

  String recipientName;

  String photoUrl;

  MultipartFile photofile;

  String createdBy;

  num createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TripProofOfDeliveryModel &&
          other.tripId == tripId &&
          other.type == type &&
          other.recipientName == recipientName &&
          other.photoUrl == photoUrl &&
          other.photofile == photofile &&
          other.createdBy == createdBy &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      (tripId == null ? 0 : tripId.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (recipientName == null ? 0 : recipientName.hashCode) +
      (photoUrl == null ? 0 : photoUrl.hashCode) +
      (photofile == null ? 0 : photofile.hashCode) +
      (createdBy == null ? 0 : createdBy.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() =>
      'TripProofOfDeliveryModel[tripId=$tripId, type=$type, recipientName=$recipientName, photoUrl=$photoUrl, photofile=$photofile, createdBy=$createdBy, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'tripId'] = tripId;
    json[r'type'] = type;
    if (recipientName != null) {
      json[r'recipientName'] = recipientName;
    }
    if (photoUrl != null) {
      json[r'photoUrl'] = photoUrl;
    }
    if (photofile != null) {
      json[r'photofile'] = photofile;
    }
    if (createdBy != null) {
      json[r'createdBy'] = createdBy;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt;
    }
    return json;
  }

  /// Returns a new [TripProofOfDeliveryModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TripProofOfDeliveryModel fromJson(Map<String, dynamic> json) => json ==
          null
      ? null
      : TripProofOfDeliveryModel(
          tripId: json[r'tripId'],
          type: TripProofOfDeliveryModelTypeEnum.fromJson(json[r'type']),
          recipientName: json[r'recipientName'],
          photoUrl: json[r'photoUrl'],
          photofile: null, // No support for decoding binary content from JSON
          createdBy: json[r'createdBy'],
          createdAt:
              json[r'createdAt'] == null ? null : json[r'createdAt'].toDouble(),
        );

  static List<TripProofOfDeliveryModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <TripProofOfDeliveryModel>[]
          : json
              .map((v) => TripProofOfDeliveryModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, TripProofOfDeliveryModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, TripProofOfDeliveryModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = TripProofOfDeliveryModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripProofOfDeliveryModel-objects as value to a dart map
  static Map<String, List<TripProofOfDeliveryModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<TripProofOfDeliveryModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripProofOfDeliveryModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

class TripProofOfDeliveryModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TripProofOfDeliveryModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NAME = TripProofOfDeliveryModelTypeEnum._(r'NAME');
  static const PHOTO = TripProofOfDeliveryModelTypeEnum._(r'PHOTO');

  /// List of all possible values in this [enum][TripProofOfDeliveryModelTypeEnum].
  static const values = <TripProofOfDeliveryModelTypeEnum>[
    NAME,
    PHOTO,
  ];

  static TripProofOfDeliveryModelTypeEnum fromJson(dynamic value) =>
      TripProofOfDeliveryModelTypeEnumTypeTransformer().decode(value);

  static List<TripProofOfDeliveryModelTypeEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <TripProofOfDeliveryModelTypeEnum>[]
          : json
              .map((value) => TripProofOfDeliveryModelTypeEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TripProofOfDeliveryModelTypeEnum] to String,
/// and [decode] dynamic data back to [TripProofOfDeliveryModelTypeEnum].
class TripProofOfDeliveryModelTypeEnumTypeTransformer {
  const TripProofOfDeliveryModelTypeEnumTypeTransformer._();

  factory TripProofOfDeliveryModelTypeEnumTypeTransformer() =>
      _instance ??= TripProofOfDeliveryModelTypeEnumTypeTransformer._();

  String encode(TripProofOfDeliveryModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TripProofOfDeliveryModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TripProofOfDeliveryModelTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'NAME':
        return TripProofOfDeliveryModelTypeEnum.NAME;
      case r'PHOTO':
        return TripProofOfDeliveryModelTypeEnum.PHOTO;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TripProofOfDeliveryModelTypeEnumTypeTransformer] instance.
  static TripProofOfDeliveryModelTypeEnumTypeTransformer _instance;
}
