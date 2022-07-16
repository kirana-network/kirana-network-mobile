//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class AuthApi {
  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create ApiKey
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateApiKeyRequestModel] createApiKeyRequestModel (required):
  Future<Response> createApiKeyWithHttpInfo(
      CreateApiKeyRequestModel createApiKeyRequestModel) async {
    // Verify required params are set.
    if (createApiKeyRequestModel == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: createApiKeyRequestModel');
    }

    final path = r'/api/auth/api-key';

    Object postBody = createApiKeyRequestModel;

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

  /// Create ApiKey
  ///
  /// Parameters:
  ///
  /// * [CreateApiKeyRequestModel] createApiKeyRequestModel (required):
  Future<ApiKeyModel> createApiKey(
      CreateApiKeyRequestModel createApiKeyRequestModel) async {
    final response = await createApiKeyWithHttpInfo(createApiKeyRequestModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ApiKeyModel')
          as ApiKeyModel;
    }
    return Future<ApiKeyModel>.value(null);
  }

  /// Delete ApiKey
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  Future<Response> deleteApiKeyWithHttpInfo(String keyId) async {
    // Verify required params are set.
    if (keyId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: keyId');
    }

    final path = r'/api/auth/api-key/{keyId}'
        .replaceAll('{' + 'keyId' + '}', keyId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete ApiKey
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  Future<bool> deleteApiKey(String keyId) async {
    final response = await deleteApiKeyWithHttpInfo(keyId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'bool') as bool;
    }
    return Future<bool>.value(null);
  }

  /// Login
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LoginPayloadModel] loginPayloadModel (required):
  Future<Response> loginWithHttpInfo(
      LoginPayloadModel loginPayloadModel) async {
    // Verify required params are set.
    if (loginPayloadModel == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: loginPayloadModel');
    }

    final path = r'/api/auth';

    Object postBody = loginPayloadModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

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

  /// Login
  ///
  /// Parameters:
  ///
  /// * [LoginPayloadModel] loginPayloadModel (required):
  Future<AuthUserModel> login(LoginPayloadModel loginPayloadModel) async {
    final response = await loginWithHttpInfo(loginPayloadModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AuthUserModel')
          as AuthUserModel;
    }
    return Future<AuthUserModel>.value(null);
  }

  /// Performs an HTTP 'GET /api/auth' operation and returns the [Response].
  Future<Response> publicAuthControllerRenderLoginPageWithHttpInfo() async {
    final path = r'/api/auth';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  Future<void> publicAuthControllerRenderLoginPage() async {
    final response = await publicAuthControllerRenderLoginPageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Refresh Token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefreshTokenPayloadModel] refreshTokenPayloadModel (required):
  Future<Response> refreshTokenWithHttpInfo(
      RefreshTokenPayloadModel refreshTokenPayloadModel) async {
    // Verify required params are set.
    if (refreshTokenPayloadModel == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: refreshTokenPayloadModel');
    }

    final path = r'/api/auth/refresh-token';

    Object postBody = refreshTokenPayloadModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

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

  /// Refresh Token
  ///
  /// Parameters:
  ///
  /// * [RefreshTokenPayloadModel] refreshTokenPayloadModel (required):
  Future<RefreshTokenResponseModel> refreshToken(
      RefreshTokenPayloadModel refreshTokenPayloadModel) async {
    final response = await refreshTokenWithHttpInfo(refreshTokenPayloadModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'RefreshTokenResponseModel')
          as RefreshTokenResponseModel;
    }
    return Future<RefreshTokenResponseModel>.value(null);
  }
}
