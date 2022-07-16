//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class OrganizationsApi {
  OrganizationsApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// attachCustomerProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [CustomerProfileModel] customerProfileModel (required):
  Future<Response> attachCustomerProfileWithHttpInfo(
      String organizationId, CustomerProfileModel customerProfileModel) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (customerProfileModel == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: customerProfileModel');
    }

    final path = r'/api/organizations/{organizationId}/customer-profiles'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody = customerProfileModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// attachCustomerProfile
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [CustomerProfileModel] customerProfileModel (required):
  Future<OrganizationCustomerProfileModel> attachCustomerProfile(
      String organizationId, CustomerProfileModel customerProfileModel) async {
    final response = await attachCustomerProfileWithHttpInfo(
        organizationId, customerProfileModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'OrganizationCustomerProfileModel')
          as OrganizationCustomerProfileModel;
    }
    return Future<OrganizationCustomerProfileModel>.value(null);
  }

  /// createClient
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [ClientModel] clientModel (required):
  Future<Response> createClientWithHttpInfo(
      String organizationId, ClientModel clientModel) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (clientModel == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: clientModel');
    }

    final path = r'/api/organizations/{organizationId}/clients'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody = clientModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// createClient
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [ClientModel] clientModel (required):
  Future<ClientModel> createClient(
      String organizationId, ClientModel clientModel) async {
    final response =
        await createClientWithHttpInfo(organizationId, clientModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ClientModel')
          as ClientModel;
    }
    return Future<ClientModel>.value(null);
  }

  /// createOrganization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrganizationModel] organizationModel (required):
  Future<Response> createOrganizationWithHttpInfo(
      OrganizationModel organizationModel) async {
    // Verify required params are set.
    if (organizationModel == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationModel');
    }

    final path = r'/api/organizations';

    Object postBody = organizationModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// createOrganization
  ///
  /// Parameters:
  ///
  /// * [OrganizationModel] organizationModel (required):
  Future<OrganizationModel> createOrganization(
      OrganizationModel organizationModel) async {
    final response = await createOrganizationWithHttpInfo(organizationModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'OrganizationModel') as OrganizationModel;
    }
    return Future<OrganizationModel>.value(null);
  }

  /// deleteCustomerProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [CustomerProfileModel] customerProfileModel (required):
  Future<Response> deleteCustomerProfileWithHttpInfo(
      String organizationId, CustomerProfileModel customerProfileModel) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (customerProfileModel == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: customerProfileModel');
    }

    final path = r'/api/organizations/{organizationId}/customer-profiles'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody = customerProfileModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// deleteCustomerProfile
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [CustomerProfileModel] customerProfileModel (required):
  Future<Map> deleteCustomerProfile(
      String organizationId, CustomerProfileModel customerProfileModel) async {
    final response = await deleteCustomerProfileWithHttpInfo(
        organizationId, customerProfileModel);
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

  /// listClients
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> listClientsWithHttpInfo(String organizationId) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }

    final path = r'/api/organizations/{organizationId}/clients'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// listClients
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<ListOfClientsModel> listClients(String organizationId) async {
    final response = await listClientsWithHttpInfo(organizationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ListOfClientsModel')
          as ListOfClientsModel;
    }
    return Future<ListOfClientsModel>.value(null);
  }

  /// listInvitations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> listInvitationsWithHttpInfo(String organizationId) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }

    final path = r'/api/organizations/{organizationId}/invitations'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// listInvitations
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<ListOfInvitationsModel> listInvitations(String organizationId) async {
    final response = await listInvitationsWithHttpInfo(organizationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ListOfInvitationsModel')
          as ListOfInvitationsModel;
    }
    return Future<ListOfInvitationsModel>.value(null);
  }

  /// listOrganizationUserProfiles
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> listOrganizationUserProfilesWithHttpInfo(
      String organizationId) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }

    final path = r'/api/organizations/{organizationId}/userprofiles'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// listOrganizationUserProfiles
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<ListOfOrganizationUserProfilesModel> listOrganizationUserProfiles(
      String organizationId) async {
    final response =
        await listOrganizationUserProfilesWithHttpInfo(organizationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ListOfOrganizationUserProfilesModel')
          as ListOfOrganizationUserProfilesModel;
    }
    return Future<ListOfOrganizationUserProfilesModel>.value(null);
  }

  /// listOrganizations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sort:
  ///
  /// * [String] range:
  ///
  /// * [String] filter:
  Future<Response> listOrganizationsWithHttpInfo(
      {String sort, String range, String filter}) async {
    // Verify required params are set.

    final path = r'/api/organizations';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sort != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (range != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'range', range));
    }
    if (filter != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'filter', filter));
    }

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// listOrganizations
  ///
  /// Parameters:
  ///
  /// * [String] sort:
  ///
  /// * [String] range:
  ///
  /// * [String] filter:
  Future<ListOfOrganizationsModel> listOrganizations(
      {String sort, String range, String filter}) async {
    final response = await listOrganizationsWithHttpInfo(
        sort: sort, range: range, filter: filter);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ListOfOrganizationsModel')
          as ListOfOrganizationsModel;
    }
    return Future<ListOfOrganizationsModel>.value(null);
  }

  /// listTrips
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] clientId:
  Future<Response> listTripsWithHttpInfo(String organizationId,
      {String clientId}) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }

    final path = r'/api/organizations/{organizationId}/trips'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'clientId', clientId));
    }

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// listTrips
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] clientId:
  Future<ListOfTripsModel> listTrips(String organizationId,
      {String clientId}) async {
    final response =
        await listTripsWithHttpInfo(organizationId, clientId: clientId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'ListOfTripsModel') as ListOfTripsModel;
    }
    return Future<ListOfTripsModel>.value(null);
  }

  /// retrieveClient
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] organizationId (required):
  Future<Response> retrieveClientWithHttpInfo(
      String clientId, String organizationId) async {
    // Verify required params are set.
    if (clientId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: clientId');
    }
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }

    final path = r'/api/organizations/{organizationId}/clients/{clientId}'
        .replaceAll('{' + 'clientId' + '}', clientId.toString())
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// retrieveClient
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] organizationId (required):
  Future<ClientModel> retrieveClient(
      String clientId, String organizationId) async {
    final response = await retrieveClientWithHttpInfo(clientId, organizationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ClientModel')
          as ClientModel;
    }
    return Future<ClientModel>.value(null);
  }

  /// retrieveCustomerProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> retrieveCustomerProfileWithHttpInfo(
      String organizationId) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }

    final path = r'/api/organizations/{organizationId}/customer-profiles'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// retrieveCustomerProfile
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<OrganizationCustomerProfileModel> retrieveCustomerProfile(
      String organizationId) async {
    final response = await retrieveCustomerProfileWithHttpInfo(organizationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'OrganizationCustomerProfileModel')
          as OrganizationCustomerProfileModel;
    }
    return Future<OrganizationCustomerProfileModel>.value(null);
  }

  /// retrieveOrganization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> retrieveOrganizationWithHttpInfo(
      String organizationId) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }

    final path = r'/api/organizations/{organizationId}'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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

  /// retrieveOrganization
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<OrganizationModel> retrieveOrganization(String organizationId) async {
    final response = await retrieveOrganizationWithHttpInfo(organizationId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'OrganizationModel') as OrganizationModel;
    }
    return Future<OrganizationModel>.value(null);
  }

  /// updateClient
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] organizationId (required):
  ///
  /// * [ClientModel] clientModel (required):
  Future<Response> updateClientWithHttpInfo(
      String clientId, String organizationId, ClientModel clientModel) async {
    // Verify required params are set.
    if (clientId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: clientId');
    }
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (clientModel == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: clientModel');
    }

    final path = r'/api/organizations/{organizationId}/clients/{clientId}'
        .replaceAll('{' + 'clientId' + '}', clientId.toString())
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody = clientModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// updateClient
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] organizationId (required):
  ///
  /// * [ClientModel] clientModel (required):
  Future<ClientModel> updateClient(
      String clientId, String organizationId, ClientModel clientModel) async {
    final response =
        await updateClientWithHttpInfo(clientId, organizationId, clientModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ClientModel')
          as ClientModel;
    }
    return Future<ClientModel>.value(null);
  }

  /// updateOrganization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [OrganizationModel] organizationModel (required):
  Future<Response> updateOrganizationWithHttpInfo(
      String organizationId, OrganizationModel organizationModel) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (organizationModel == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationModel');
    }

    final path = r'/api/organizations/{organizationId}'
        .replaceAll('{' + 'organizationId' + '}', organizationId.toString());

    Object postBody = organizationModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// updateOrganization
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [OrganizationModel] organizationModel (required):
  Future<OrganizationModel> updateOrganization(
      String organizationId, OrganizationModel organizationModel) async {
    final response =
        await updateOrganizationWithHttpInfo(organizationId, organizationModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'OrganizationModel') as OrganizationModel;
    }
    return Future<OrganizationModel>.value(null);
  }

  /// updateOrganizationUserProfile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [OrganizationUserProfileModel] organizationUserProfileModel (required):
  Future<Response> updateOrganizationUserProfileWithHttpInfo(
      String organizationId,
      String userProfileId,
      OrganizationUserProfileModel organizationUserProfileModel) async {
    // Verify required params are set.
    if (organizationId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationId');
    }
    if (userProfileId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: userProfileId');
    }
    if (organizationUserProfileModel == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: organizationUserProfileModel');
    }

    final path =
        r'/api/organizations/{organizationId}/userprofiles/{userProfileId}'
            .replaceAll('{' + 'organizationId' + '}', organizationId.toString())
            .replaceAll('{' + 'userProfileId' + '}', userProfileId.toString());

    Object postBody = organizationUserProfileModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// updateOrganizationUserProfile
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userProfileId (required):
  ///
  /// * [OrganizationUserProfileModel] organizationUserProfileModel (required):
  Future<OrganizationUserProfileModel> updateOrganizationUserProfile(
      String organizationId,
      String userProfileId,
      OrganizationUserProfileModel organizationUserProfileModel) async {
    final response = await updateOrganizationUserProfileWithHttpInfo(
        organizationId, userProfileId, organizationUserProfileModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'OrganizationUserProfileModel')
          as OrganizationUserProfileModel;
    }
    return Future<OrganizationUserProfileModel>.value(null);
  }
}
