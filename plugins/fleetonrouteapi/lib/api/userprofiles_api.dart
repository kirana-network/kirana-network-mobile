//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;


class UserprofilesApi {
  UserprofilesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// createUserProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserProfileModel] userProfileModel (required):
  Future<Response> createUserProfileWithHttpInfo(UserProfileModel userProfileModel) async {
    // Verify required params are set.
    if (userProfileModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileModel');
    }

    final path = r'/api/userprofiles';

    Object postBody = userProfileModel;

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

  /// createUserProfile
  ///
  /// Parameters:
  ///
  /// * [UserProfileModel] userProfileModel (required):
  Future<UserProfileModel> createUserProfile(UserProfileModel userProfileModel) async {
    final response = await createUserProfileWithHttpInfo(userProfileModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserProfileModel') as UserProfileModel;
        }
    return Future<UserProfileModel>.value(null);
  }

  /// deleteCustomerProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] customerProfileId (required):
  ///
  /// * [String] userProfileId (required):
  Future<Response> deleteCustomerProfileWithHttpInfo(String customerProfileId, String userProfileId) async {
    // Verify required params are set.
    if (customerProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: customerProfileId');
    }
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}/customer-profiles/{customerProfileId}'
      .replaceAll('{' + 'customerProfileId' + '}', customerProfileId.toString())
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// deleteCustomerProfile
  ///
  /// Parameters:
  ///
  /// * [String] customerProfileId (required):
  ///
  /// * [String] userProfileId (required):
  Future<Map> deleteCustomerProfile(String customerProfileId, String userProfileId) async {
    final response = await deleteCustomerProfileWithHttpInfo(customerProfileId, userProfileId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Map') as Map;
        }
    return Future<Map>.value(null);
  }

  /// deleteInvitation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  Future<Response> deleteInvitationWithHttpInfo(String organizationId, String userProfileId) async {
    // Verify required params are set.
    if (organizationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}/invitations/{organizationId}'
      .replaceAll('{' + 'organizationId' + '}', organizationId.toString())
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// deleteInvitation
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  Future<Map> deleteInvitation(String organizationId, String userProfileId) async {
    final response = await deleteInvitationWithHttpInfo(organizationId, userProfileId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Map') as Map;
        }
    return Future<Map>.value(null);
  }

  /// deleteUserProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<Response> deleteUserProfileWithHttpInfo(String userProfileId) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}'
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// deleteUserProfile
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<bool> deleteUserProfile(String userProfileId) async {
    final response = await deleteUserProfileWithHttpInfo(userProfileId);
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

  /// listApiKeys
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [String] sort:
  Future<Response> listApiKeysWithHttpInfo(String userProfileId, { String sort }) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}/api-keys'
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ID_TOKEN'];

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

  /// listApiKeys
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [String] sort:
  Future<ListOfApiKeysModel> listApiKeys(String userProfileId, { String sort }) async {
    final response = await listApiKeysWithHttpInfo(userProfileId,  sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListOfApiKeysModel') as ListOfApiKeysModel;
        }
    return Future<ListOfApiKeysModel>.value(null);
  }

  /// listCustomerProfiles
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<Response> listCustomerProfilesWithHttpInfo(String userProfileId) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}/customer-profiles'
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

  /// listCustomerProfiles
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<ListOfCustomerProfilesModel> listCustomerProfiles(String userProfileId) async {
    final response = await listCustomerProfilesWithHttpInfo(userProfileId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListOfCustomerProfilesModel') as ListOfCustomerProfilesModel;
        }
    return Future<ListOfCustomerProfilesModel>.value(null);
  }

  /// listInvitations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<Response> listInvitationsWithHttpInfo(String userProfileId) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}/invitations'
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

  /// listInvitations
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<List<InvitationModel>> listInvitations(String userProfileId) async {
    final response = await listInvitationsWithHttpInfo(userProfileId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InvitationModel>') as List)
        .cast<InvitationModel>()
        .toList(growable: false);
    }
    return Future<List<InvitationModel>>.value(null);
  }

  /// listTrips
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [String] tripType:
  ///
  /// * [String] tripStatus:
  ///
  /// * [String] endDate:
  ///
  /// * [String] startDate:
  Future<Response> listTripsWithHttpInfo(String userProfileId, { String tripType, String tripStatus, String endDate, String startDate }) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}/trips'
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tripType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tripType', tripType));
    }
    if (tripStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tripStatus', tripStatus));
    }
    if (endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'endDate', endDate));
    }
    if (startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDate', startDate));
    }

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

  /// listTrips
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [String] tripType:
  ///
  /// * [String] tripStatus:
  ///
  /// * [String] endDate:
  ///
  /// * [String] startDate:
  Future<ListOfTripsModel> listTrips(String userProfileId, { String tripType, String tripStatus, String endDate, String startDate }) async {
    final response = await listTripsWithHttpInfo(userProfileId,  tripType: tripType, tripStatus: tripStatus, endDate: endDate, startDate: startDate );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListOfTripsModel') as ListOfTripsModel;
        }
    return Future<ListOfTripsModel>.value(null);
  }

  /// listUserProfileOrganizations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<Response> listUserProfileOrganizationsWithHttpInfo(String userProfileId) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}/organizations'
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

  /// listUserProfileOrganizations
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<List<UserProfileOrganizationModel>> listUserProfileOrganizations(String userProfileId) async {
    final response = await listUserProfileOrganizationsWithHttpInfo(userProfileId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<UserProfileOrganizationModel>') as List)
        .cast<UserProfileOrganizationModel>()
        .toList(growable: false);
    }
    return Future<List<UserProfileOrganizationModel>>.value(null);
  }

  /// listUserProfiles will be replaced by queryUserProfiles
  ///
  /// 'listUserProfiles' is deprecated. Please use 'OrganizationsApi.listUserProfiles' instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filter (required):
  ///
  /// * [String] range:
  ///
  /// * [String] sort:
  Future<Response> listUserProfilesWithHttpInfo(String filter, { String range, String sort }) async {
    // Verify required params are set.
    if (filter == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: filter');
    }

    final path = r'/api/userprofiles';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter', filter));
    if (range != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'range', range));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }

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

  /// listUserProfiles will be replaced by queryUserProfiles
  ///
  /// 'listUserProfiles' is deprecated. Please use 'OrganizationsApi.listUserProfiles' instead.
  ///
  /// Parameters:
  ///
  /// * [String] filter (required):
  ///
  /// * [String] range:
  ///
  /// * [String] sort:
  Future<ListOfUserProfilesModel> listUserProfiles(String filter, { String range, String sort }) async {
    final response = await listUserProfilesWithHttpInfo(filter,  range: range, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListOfUserProfilesModel') as ListOfUserProfilesModel;
        }
    return Future<ListOfUserProfilesModel>.value(null);
  }

  /// retrieveInvitation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  Future<Response> retrieveInvitationWithHttpInfo(String organizationId, String userProfileId) async {
    // Verify required params are set.
    if (organizationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}/invitations/{organizationId}'
      .replaceAll('{' + 'organizationId' + '}', organizationId.toString())
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

  /// retrieveInvitation
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  Future<InvitationModel> retrieveInvitation(String organizationId, String userProfileId) async {
    final response = await retrieveInvitationWithHttpInfo(organizationId, userProfileId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InvitationModel') as InvitationModel;
        }
    return Future<InvitationModel>.value(null);
  }

  /// retrieveUserProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<Response> retrieveUserProfileWithHttpInfo(String userProfileId) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }

    final path = r'/api/userprofiles/{userProfileId}'
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

  /// retrieveUserProfile
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  Future<UserProfileModel> retrieveUserProfile(String userProfileId) async {
    final response = await retrieveUserProfileWithHttpInfo(userProfileId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserProfileModel') as UserProfileModel;
        }
    return Future<UserProfileModel>.value(null);
  }

  /// setupCustomerProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [SetupCustomerProfileRequestModel] setupCustomerProfileRequestModel (required):
  Future<Response> setupCustomerProfileWithHttpInfo(String userProfileId, SetupCustomerProfileRequestModel setupCustomerProfileRequestModel) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }
    if (setupCustomerProfileRequestModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: setupCustomerProfileRequestModel');
    }

    final path = r'/api/userprofiles/{userProfileId}/customer-profiles'
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody = setupCustomerProfileRequestModel;

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

  /// setupCustomerProfile
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [SetupCustomerProfileRequestModel] setupCustomerProfileRequestModel (required):
  Future<SetupCustomerProfileResponseModel> setupCustomerProfile(String userProfileId, SetupCustomerProfileRequestModel setupCustomerProfileRequestModel) async {
    final response = await setupCustomerProfileWithHttpInfo(userProfileId, setupCustomerProfileRequestModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SetupCustomerProfileResponseModel') as SetupCustomerProfileResponseModel;
        }
    return Future<SetupCustomerProfileResponseModel>.value(null);
  }

  /// updateInvitation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [InvitationPayloadModel] invitationPayloadModel (required):
  Future<Response> updateInvitationWithHttpInfo(String organizationId, String userProfileId, InvitationPayloadModel invitationPayloadModel) async {
    // Verify required params are set.
    if (organizationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }
    if (invitationPayloadModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invitationPayloadModel');
    }

    final path = r'/api/userprofiles/{userProfileId}/invitations/{organizationId}'
      .replaceAll('{' + 'organizationId' + '}', organizationId.toString())
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody = invitationPayloadModel;

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

  /// updateInvitation
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [InvitationPayloadModel] invitationPayloadModel (required):
  Future<InvitationModel> updateInvitation(String organizationId, String userProfileId, InvitationPayloadModel invitationPayloadModel) async {
    final response = await updateInvitationWithHttpInfo(organizationId, userProfileId, invitationPayloadModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InvitationModel') as InvitationModel;
        }
    return Future<InvitationModel>.value(null);
  }

  /// updateUserProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [UserProfileModel] userProfileModel (required):
  Future<Response> updateUserProfileWithHttpInfo(String userProfileId, UserProfileModel userProfileModel) async {
    // Verify required params are set.
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }
    if (userProfileModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileModel');
    }

    final path = r'/api/userprofiles/{userProfileId}'
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody = userProfileModel;

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

  /// updateUserProfile
  ///
  /// Parameters:
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [UserProfileModel] userProfileModel (required):
  Future<UserProfileModel> updateUserProfile(String userProfileId, UserProfileModel userProfileModel) async {
    final response = await updateUserProfileWithHttpInfo(userProfileId, userProfileModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserProfileModel') as UserProfileModel;
        }
    return Future<UserProfileModel>.value(null);
  }

  /// updateUserProfileOrganization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [UserProfileOrganizationModel] userProfileOrganizationModel (required):
  Future<Response> updateUserProfileOrganizationWithHttpInfo(String organizationId, String userProfileId, UserProfileOrganizationModel userProfileOrganizationModel) async {
    // Verify required params are set.
    if (organizationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (userProfileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileId');
    }
    if (userProfileOrganizationModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userProfileOrganizationModel');
    }

    final path = r'/api/userprofiles/{userProfileId}/organization/{organizationId}'
      .replaceAll('{' + 'organizationId' + '}', organizationId.toString())
      .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody = userProfileOrganizationModel;

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

  /// updateUserProfileOrganization
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [UserProfileOrganizationModel] userProfileOrganizationModel (required):
  Future<UserProfileOrganizationModel> updateUserProfileOrganization(String organizationId, String userProfileId, UserProfileOrganizationModel userProfileOrganizationModel) async {
    final response = await updateUserProfileOrganizationWithHttpInfo(organizationId, userProfileId, userProfileOrganizationModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserProfileOrganizationModel') as UserProfileOrganizationModel;
        }
    return Future<UserProfileOrganizationModel>.value(null);
  }
}
