//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class NavigationApi {
  NavigationApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// getTileImage
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] latitude (required):
  ///
  /// * [num] longitude (required):
  ///
  /// * [num] height (required):
  ///
  /// * [num] width (required):
  ///
  /// * [num] zoom (required):
  ///
  /// * [String] organizationId (required):
  Future<Response> getTileImageWithHttpInfo(num latitude, num longitude,
      num height, num width, num zoom, String organizationId) async {
    // Verify required params are set.
    if (latitude == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: latitude');
    }
    if (longitude == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: longitude');
    }
    if (height == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: height');
    }
    if (width == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: width');
    }
    if (zoom == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: zoom');
    }
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }

    final path = r'/api/navigation/{organizationId}/tile-image'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(
        _convertParametersForCollectionFormat('', 'latitude', latitude));
    queryParams.addAll(
        _convertParametersForCollectionFormat('', 'longitude', longitude));
    queryParams
        .addAll(_convertParametersForCollectionFormat('', 'height', height));
    queryParams
        .addAll(_convertParametersForCollectionFormat('', 'width', width));
    queryParams.addAll(_convertParametersForCollectionFormat('', 'zoom', zoom));

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ID_TOKEN'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// getTileImage
  ///
  /// Parameters:
  ///
  /// * [num] latitude (required):
  ///
  /// * [num] longitude (required):
  ///
  /// * [num] height (required):
  ///
  /// * [num] width (required):
  ///
  /// * [num] zoom (required):
  ///
  /// * [String] organizationId (required):
  Future<TileImageResponseModel> getTileImage(num latitude, num longitude,
      num height, num width, num zoom, String organizationId) async {
    final response = await getTileImageWithHttpInfo(
        latitude, longitude, height, width, zoom, organizationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'TileImageResponseModel')
          as TileImageResponseModel;
    }
    return Future<TileImageResponseModel>.value(null);
  }

  /// optimizeRoute
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [OptimizedRouteRequestPayloadModel] optimizedRouteRequestPayloadModel (required):
  Future<Response> optimizeRouteWithHttpInfo(
      String organizationId,
      OptimizedRouteRequestPayloadModel
          optimizedRouteRequestPayloadModel) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (optimizedRouteRequestPayloadModel == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: optimizedRouteRequestPayloadModel');
    }

    final path = r'/api/navigation/{organizationId}/optimize-route'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody = optimizedRouteRequestPayloadModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ID_TOKEN'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// optimizeRoute
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [OptimizedRouteRequestPayloadModel] optimizedRouteRequestPayloadModel (required):
  Future<OptimizedRouteResponseModel> optimizeRoute(
      String organizationId,
      OptimizedRouteRequestPayloadModel
          optimizedRouteRequestPayloadModel) async {
    final response = await optimizeRouteWithHttpInfo(
        organizationId, optimizedRouteRequestPayloadModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'OptimizedRouteResponseModel')
          as OptimizedRouteResponseModel;
    }
    return Future<OptimizedRouteResponseModel>.value(null);
  }
}
