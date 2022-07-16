//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;


class ClientsApi {
  ClientsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// listClients
  ///
  /// Deprecated. See Ok Response for more information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filter (required):
  ///
  /// * [String] sort:
  ///
  /// * [String] range:
  Future<Response> listClientsWithHttpInfo(String filter, { String sort, String range }) async {
    // Verify required params are set.
    if (filter == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: filter');
    }

    final path = r'/api/clients';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (range != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'range', range));
    }
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter', filter));

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

  /// listClients
  ///
  /// Deprecated. See Ok Response for more information.
  ///
  /// Parameters:
  ///
  /// * [String] filter (required):
  ///
  /// * [String] sort:
  ///
  /// * [String] range:
  Future<ListOfClientsModel> listClients(String filter, { String sort, String range }) async {
    final response = await listClientsWithHttpInfo(filter,  sort: sort, range: range );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListOfClientsModel') as ListOfClientsModel;
        }
    return Future<ListOfClientsModel>.value(null);
  }
}
