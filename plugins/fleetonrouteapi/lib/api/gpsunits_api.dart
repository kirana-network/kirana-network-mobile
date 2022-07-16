//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;


class GpsunitsApi {
  GpsunitsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// createGpsUnit
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [GPSUnitModel] gPSUnitModel (required):
  Future<Response> createGpsUnitWithHttpInfo(String userProfileId, GPSUnitModel gPSUnitModel) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }
    if (gPSUnitModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: gPSUnitModel');
    }

    final path = r'/api/gpsunits/{userProfileId}/gpsunits'
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody = gPSUnitModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// createGpsUnit
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [GPSUnitModel] gPSUnitModel (required):
  Future<GPSUnitModel> createGpsUnit(String userProfileId, GPSUnitModel gPSUnitModel) async {
    final response = await createGpsUnitWithHttpInfo(userProfileId, gPSUnitModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'GPSUnitModel') as GPSUnitModel;
        }
    return Future<GPSUnitModel>.value(null);
  }

  /// retrieveGpsUnit
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] gpsUnitId (required):
  ///
  /// * [String] userProfileId (required):
  Future<Response> retrieveGpsUnitWithHttpInfo(String gpsUnitId, String userProfileId) async {
    // Verify required params are set.
    if (gpsUnitId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: gpsUnitId');
    }
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/gpsunits/{userProfileId}/gpsunits/{gpsUnitId}'
      .replaceAll('{' + 'gpsUnitId' + '}', gpsUnitId.toString())
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// retrieveGpsUnit
  ///
  /// Parameters:
  ///
  /// * [String] gpsUnitId (required):
  ///
  /// * [String] userProfileId (required):
  Future<GPSUnitModel> retrieveGpsUnit(String gpsUnitId, String userProfileId) async {
    final response = await retrieveGpsUnitWithHttpInfo(gpsUnitId, userProfileId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'GPSUnitModel') as GPSUnitModel;
        }
    return Future<GPSUnitModel>.value(null);
  }

  /// updateGpsUnit
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] gpsUnitId (required):
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [GPSUnitModel] gPSUnitModel (required):
  Future<Response> updateGpsUnitWithHttpInfo(String gpsUnitId, String userProfileId, GPSUnitModel gPSUnitModel) async {
    // Verify required params are set.
    if (gpsUnitId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: gpsUnitId');
    }
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }
    if (gPSUnitModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: gPSUnitModel');
    }

    final path = r'/api/gpsunits/{userProfileId}/gpsunits/{gpsUnitId}'
      .replaceAll('{' + 'gpsUnitId' + '}', gpsUnitId.toString())
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody = gPSUnitModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// updateGpsUnit
  ///
  /// Parameters:
  ///
  /// * [String] gpsUnitId (required):
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [GPSUnitModel] gPSUnitModel (required):
  Future<GPSUnitModel> updateGpsUnit(String gpsUnitId, String userProfileId, GPSUnitModel gPSUnitModel) async {
    final response = await updateGpsUnitWithHttpInfo(gpsUnitId, userProfileId, gPSUnitModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'GPSUnitModel') as GPSUnitModel;
        }
    return Future<GPSUnitModel>.value(null);
  }
}
