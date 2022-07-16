//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'API_KEY'] = ApiKeyAuth('header', 'X-API-KEY');
    _authentications[r'ID_TOKEN'] = ApiKeyAuth('header', 'Authorization');
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// returns an unmodifiable view of the authentications, since none should be added
  /// nor deleted
  Map<String, Authentication> get authentications =>
      Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don’t use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    Iterable<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final url = '$basePath$path$queryString';

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn’t a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, Uri.parse(url));
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          onError: (error, trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, Uri.parse(url));
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : serialize(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(Uri.parse(url), headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(Uri.parse(url), headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(Uri.parse(url), headers: nullableHeaderParams,);
        case 'PATCH': return await _client.patch(Uri.parse(url), headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(Uri.parse(url), headers: nullableHeaderParams,);
        case 'GET': return await _client.get(Uri.parse(url), headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
          break;
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ActionToggleModel':
          return ActionToggleModel.fromJson(value);
        case 'ApiKeyModel':
          return ApiKeyModel.fromJson(value);
        case 'ApiVersionModel':
          return ApiVersionModel.fromJson(value);
        case 'AuthUserModel':
          return AuthUserModel.fromJson(value);
        case 'ClientModel':
          return ClientModel.fromJson(value);
        case 'ClientOptionsModel':
          return ClientOptionsModel.fromJson(value);
        case 'CreateApiKeyRequestModel':
          return CreateApiKeyRequestModel.fromJson(value);
        case 'CreateInvitationPayloadModel':
          return CreateInvitationPayloadModel.fromJson(value);
        case 'CustomerProfileModel':
          return CustomerProfileModel.fromJson(value);
        case 'GPSUnitModel':
          return GPSUnitModel.fromJson(value);
        case 'InvitationModel':
          return InvitationModel.fromJson(value);
        case 'InvitationPayloadModel':
          return InvitationPayloadModel.fromJson(value);
        case 'LatLngModel':
          return LatLngModel.fromJson(value);
        case 'ListOfActionTogglesModel':
          return ListOfActionTogglesModel.fromJson(value);
        case 'ListOfApiKeysModel':
          return ListOfApiKeysModel.fromJson(value);
        case 'ListOfClientsModel':
          return ListOfClientsModel.fromJson(value);
        case 'ListOfCustomerProfilesModel':
          return ListOfCustomerProfilesModel.fromJson(value);
        case 'ListOfInvitationsModel':
          return ListOfInvitationsModel.fromJson(value);
        case 'ListOfOrganizationUserProfilesModel':
          return ListOfOrganizationUserProfilesModel.fromJson(value);
        case 'ListOfOrganizationsModel':
          return ListOfOrganizationsModel.fromJson(value);
        case 'ListOfTripNotesModel':
          return ListOfTripNotesModel.fromJson(value);
        case 'ListOfTripsModel':
          return ListOfTripsModel.fromJson(value);
        case 'ListOfUserProfilesModel':
          return ListOfUserProfilesModel.fromJson(value);
        case 'LoginPayloadModel':
          return LoginPayloadModel.fromJson(value);
        case 'OfflineCustomerProfileModel':
          return OfflineCustomerProfileModel.fromJson(value);
        case 'OptimizedRouteRequestPayloadModel':
          return OptimizedRouteRequestPayloadModel.fromJson(value);
        case 'OptimizedRouteResponseModel':
          return OptimizedRouteResponseModel.fromJson(value);
        case 'OrganizationCustomerProfileModel':
          return OrganizationCustomerProfileModel.fromJson(value);
        case 'OrganizationModel':
          return OrganizationModel.fromJson(value);
        case 'OrganizationQueryFilterModel':
          return OrganizationQueryFilterModel.fromJson(value);
        case 'OrganizationUserProfileModel':
          return OrganizationUserProfileModel.fromJson(value);
        case 'RefreshTokenPayloadModel':
          return RefreshTokenPayloadModel.fromJson(value);
        case 'RefreshTokenResponseModel':
          return RefreshTokenResponseModel.fromJson(value);
        case 'ScheduleDateModel':
          return ScheduleDateModel.fromJson(value);
        case 'SetupCustomerProfileRequestModel':
          return SetupCustomerProfileRequestModel.fromJson(value);
        case 'SetupCustomerProfileResponseModel':
          return SetupCustomerProfileResponseModel.fromJson(value);
        case 'SortParamModel':
          return SortParamModel.fromJson(value);
        case 'StripeCardModel':
          return StripeCardModel.fromJson(value);
        case 'StripeCustomerProfileModel':
          return StripeCustomerProfileModel.fromJson(value);
        case 'SupportedApiVersionsModel':
          return SupportedApiVersionsModel.fromJson(value);
        case 'TileImageResponseModel':
          return TileImageResponseModel.fromJson(value);
        case 'TripClientModel':
          return TripClientModel.fromJson(value);
        case 'TripModel':
          return TripModel.fromJson(value);
        case 'TripNoteMetadataModel':
          return TripNoteMetadataModel.fromJson(value);
        case 'TripNoteModel':
          return TripNoteModel.fromJson(value);
        case 'TripOptionsModel':
          return TripOptionsModel.fromJson(value);
        case 'TripProofOfDeliveryModel':
          return TripProofOfDeliveryModel.fromJson(value);
        case 'UserProfileModel':
          return UserProfileModel.fromJson(value);
        case 'UserProfileOrganizationModel':
          return UserProfileOrganizationModel.fromJson(value);
        case 'UserProfileQueryFilterModel':
          return UserProfileQueryFilterModel.fromJson(value);
        default:
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return value
              .map((v) => _deserialize(v, newTargetType, growable: growable))
              .toList(growable: true == growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return value
              .map((v) => _deserialize(v, newTargetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return Map.fromIterables(
              value.keys,
              value.values.map((v) => _deserialize(v, newTargetType, growable: growable)),
            );
          }
          break;
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', e, stack,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }

  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

  return targetType == 'String'
    ? json
    : _deserialize(jsonDecode(json), targetType, growable: true == growable);
  }

  String serialize(Object obj) => obj == null ? '' : json.encode(obj);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    authNames.forEach((authName) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    });
  }
}
