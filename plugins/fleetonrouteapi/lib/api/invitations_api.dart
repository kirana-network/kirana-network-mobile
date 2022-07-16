//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @ dart=2.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;

class InvitationsApi {
  InvitationsApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// createInvitation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInvitationPayloadModel] createInvitationPayloadModel (required):
  Future<Response> createInvitationWithHttpInfo(
      CreateInvitationPayloadModel createInvitationPayloadModel) async {
    // Verify required params are set.
    if (createInvitationPayloadModel == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: createInvitationPayloadModel');
    }

    final path = r'/api/invitations';

    Object postBody = createInvitationPayloadModel;

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

  /// createInvitation
  ///
  /// Parameters:
  ///
  /// * [CreateInvitationPayloadModel] createInvitationPayloadModel (required):
  Future<InvitationModel> createInvitation(
      CreateInvitationPayloadModel createInvitationPayloadModel) async {
    final response =
        await createInvitationWithHttpInfo(createInvitationPayloadModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'InvitationModel') as InvitationModel;
    }
    return Future<InvitationModel>.value(null);
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
}
