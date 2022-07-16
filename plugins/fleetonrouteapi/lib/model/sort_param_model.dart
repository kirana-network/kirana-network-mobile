//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class SortParamModel {
  /// Returns a new [SortParamModel] instance.
  SortParamModel({
    @required this.field,
    @required this.order,
  });

  String field;

  SortParamModelOrderEnum order;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SortParamModel && other.field == field && other.order == order;

  @override
  int get hashCode =>
      (field == null ? 0 : field.hashCode) +
      (order == null ? 0 : order.hashCode);

  @override
  String toString() => 'SortParamModel[field=$field, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'field'] = field;
    json[r'order'] = order;
    return json;
  }

  /// Returns a new [SortParamModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SortParamModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : SortParamModel(
          field: json[r'field'],
          order: SortParamModelOrderEnum.fromJson(json[r'order']),
        );

  static List<SortParamModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <SortParamModel>[]
          : json
              .map((v) => SortParamModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, SortParamModel> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SortParamModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = SortParamModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SortParamModel-objects as value to a dart map
  static Map<String, List<SortParamModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<SortParamModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SortParamModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

class SortParamModelOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const SortParamModelOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = SortParamModelOrderEnum._(r'asc');
  static const desc = SortParamModelOrderEnum._(r'desc');
  static const ASC = SortParamModelOrderEnum._(r'ASC');
  static const DESC = SortParamModelOrderEnum._(r'DESC');

  /// List of all possible values in this [enum][SortParamModelOrderEnum].
  static const values = <SortParamModelOrderEnum>[
    asc,
    desc,
    ASC,
    DESC,
  ];

  static SortParamModelOrderEnum fromJson(dynamic value) =>
      SortParamModelOrderEnumTypeTransformer().decode(value);

  static List<SortParamModelOrderEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <SortParamModelOrderEnum>[]
          : json
              .map((value) => SortParamModelOrderEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [SortParamModelOrderEnum] to String,
/// and [decode] dynamic data back to [SortParamModelOrderEnum].
class SortParamModelOrderEnumTypeTransformer {
  const SortParamModelOrderEnumTypeTransformer._();

  factory SortParamModelOrderEnumTypeTransformer() =>
      _instance ??= SortParamModelOrderEnumTypeTransformer._();

  String encode(SortParamModelOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SortParamModelOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SortParamModelOrderEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'asc':
        return SortParamModelOrderEnum.asc;
      case r'desc':
        return SortParamModelOrderEnum.desc;
      case r'ASC':
        return SortParamModelOrderEnum.ASC;
      case r'DESC':
        return SortParamModelOrderEnum.DESC;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [SortParamModelOrderEnumTypeTransformer] instance.
  static SortParamModelOrderEnumTypeTransformer _instance;
}
