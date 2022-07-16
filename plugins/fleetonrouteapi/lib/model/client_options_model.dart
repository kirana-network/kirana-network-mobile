//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ClientOptionsModel {
  /// Returns a new [ClientOptionsModel] instance.
  ClientOptionsModel({
    @required this.enableNotifications,
    @required this.primaryNotificationMethod,
  });

  bool enableNotifications;

  ClientOptionsModelPrimaryNotificationMethodEnum primaryNotificationMethod;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientOptionsModel &&
          other.enableNotifications == enableNotifications &&
          other.primaryNotificationMethod == primaryNotificationMethod;

  @override
  int get hashCode =>
      (enableNotifications == null ? 0 : enableNotifications.hashCode) +
      (primaryNotificationMethod == null
          ? 0
          : primaryNotificationMethod.hashCode);

  @override
  String toString() =>
      'ClientOptionsModel[enableNotifications=$enableNotifications, primaryNotificationMethod=$primaryNotificationMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'enableNotifications'] = enableNotifications;
    json[r'primaryNotificationMethod'] = primaryNotificationMethod;
    return json;
  }

  /// Returns a new [ClientOptionsModel] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ClientOptionsModel fromJson(Map<String, dynamic> json) => json == null
      ? null
      : ClientOptionsModel(
          enableNotifications: json[r'enableNotifications'],
          primaryNotificationMethod:
              ClientOptionsModelPrimaryNotificationMethodEnum.fromJson(
                  json[r'primaryNotificationMethod']),
        );

  static List<ClientOptionsModel> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ClientOptionsModel>[]
          : json
              .map((v) => ClientOptionsModel.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ClientOptionsModel> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, ClientOptionsModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = ClientOptionsModel.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ClientOptionsModel-objects as value to a dart map
  static Map<String, List<ClientOptionsModel>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ClientOptionsModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ClientOptionsModel.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

class ClientOptionsModelPrimaryNotificationMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const ClientOptionsModelPrimaryNotificationMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SMS = ClientOptionsModelPrimaryNotificationMethodEnum._(r'SMS');
  static const EMAIL =
      ClientOptionsModelPrimaryNotificationMethodEnum._(r'EMAIL');

  /// List of all possible values in this [enum][ClientOptionsModelPrimaryNotificationMethodEnum].
  static const values = <ClientOptionsModelPrimaryNotificationMethodEnum>[
    SMS,
    EMAIL,
  ];

  static ClientOptionsModelPrimaryNotificationMethodEnum fromJson(
          dynamic value) =>
      ClientOptionsModelPrimaryNotificationMethodEnumTypeTransformer()
          .decode(value);

  static List<ClientOptionsModelPrimaryNotificationMethodEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ClientOptionsModelPrimaryNotificationMethodEnum>[]
          : json
              .map((value) =>
                  ClientOptionsModelPrimaryNotificationMethodEnum.fromJson(
                      value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ClientOptionsModelPrimaryNotificationMethodEnum] to String,
/// and [decode] dynamic data back to [ClientOptionsModelPrimaryNotificationMethodEnum].
class ClientOptionsModelPrimaryNotificationMethodEnumTypeTransformer {
  const ClientOptionsModelPrimaryNotificationMethodEnumTypeTransformer._();

  factory ClientOptionsModelPrimaryNotificationMethodEnumTypeTransformer() =>
      _instance ??=
          ClientOptionsModelPrimaryNotificationMethodEnumTypeTransformer._();

  String encode(ClientOptionsModelPrimaryNotificationMethodEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a ClientOptionsModelPrimaryNotificationMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClientOptionsModelPrimaryNotificationMethodEnum decode(dynamic data,
      {bool allowNull}) {
    switch (data) {
      case r'SMS':
        return ClientOptionsModelPrimaryNotificationMethodEnum.SMS;
      case r'EMAIL':
        return ClientOptionsModelPrimaryNotificationMethodEnum.EMAIL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ClientOptionsModelPrimaryNotificationMethodEnumTypeTransformer] instance.
  static ClientOptionsModelPrimaryNotificationMethodEnumTypeTransformer
      _instance;
}
