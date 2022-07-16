//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of fleetonrouteapi;


class TripsApi {
  TripsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// createTrip
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TripModel] tripModel (required):
  Future<Response> createTripWithHttpInfo(TripModel tripModel) async {
    // Verify required params are set.
    if (tripModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripModel');
    }

    final path = r'/api/trips';

    Object postBody = tripModel;

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

  /// createTrip
  ///
  /// Parameters:
  ///
  /// * [TripModel] tripModel (required):
  Future<TripModel> createTrip(TripModel tripModel) async {
    final response = await createTripWithHttpInfo(tripModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TripModel') as TripModel;
        }
    return Future<TripModel>.value(null);
  }

  /// createTripNote
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  ///
  /// * [TripNoteModel] tripNoteModel (required):
  Future<Response> createTripNoteWithHttpInfo(String tripId, TripNoteModel tripNoteModel) async {
    // Verify required params are set.
    if (tripId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripId');
    }
    if (tripNoteModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripNoteModel');
    }

    final path = r'/api/trips/{tripId}/notes'
      .replaceAll('{' + 'tripId' + '}', tripId.toString());

    Object postBody = tripNoteModel;

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

  /// createTripNote
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  ///
  /// * [TripNoteModel] tripNoteModel (required):
  Future<ListOfTripNotesModel> createTripNote(String tripId, TripNoteModel tripNoteModel) async {
    final response = await createTripNoteWithHttpInfo(tripId, tripNoteModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListOfTripNotesModel') as ListOfTripNotesModel;
        }
    return Future<ListOfTripNotesModel>.value(null);
  }

  /// deleteTripNote
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tripNoteId (required):
  ///
  /// * [String] tripId (required):
  Future<Response> deleteTripNoteWithHttpInfo(String tripNoteId, String tripId) async {
    // Verify required params are set.
    if (tripNoteId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripNoteId');
    }
    if (tripId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripId');
    }

    final path = r'/api/trips/{tripId}/notes/{tripNoteId}'
      .replaceAll('{' + 'tripNoteId' + '}', tripNoteId.toString())
      .replaceAll('{' + 'tripId' + '}', tripId.toString());

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

  /// deleteTripNote
  ///
  /// Parameters:
  ///
  /// * [String] tripNoteId (required):
  ///
  /// * [String] tripId (required):
  Future<bool> deleteTripNote(String tripNoteId, String tripId) async {
    final response = await deleteTripNoteWithHttpInfo(tripNoteId, tripId);
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

  /// listTripNotes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  Future<Response> listTripNotesWithHttpInfo(String tripId) async {
    // Verify required params are set.
    if (tripId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripId');
    }

    final path = r'/api/trips/{tripId}/notes'
      .replaceAll('{' + 'tripId' + '}', tripId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

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

  /// listTripNotes
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  Future<ListOfTripNotesModel> listTripNotes(String tripId) async {
    final response = await listTripNotesWithHttpInfo(tripId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListOfTripNotesModel') as ListOfTripNotesModel;
        }
    return Future<ListOfTripNotesModel>.value(null);
  }

  /// listTrips
  ///
  /// 'listTrips' operation is deprecated. Please use OrganizationsApi instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] organizationIds:
  Future<Response> listTripsWithHttpInfo({ List<String> organizationIds }) async {
    // Verify required params are set.

    final path = r'/api/trips';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (organizationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'organizationIds', organizationIds));
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
  /// 'listTrips' operation is deprecated. Please use OrganizationsApi instead.
  ///
  /// Parameters:
  ///
  /// * [List<String>] organizationIds:
  Future<ListOfTripsModel> listTrips({ List<String> organizationIds }) async {
    final response = await listTripsWithHttpInfo( organizationIds: organizationIds );
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

  /// retrieveProofOfDelivery
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  Future<Response> retrieveProofOfDeliveryWithHttpInfo(String tripId) async {
    // Verify required params are set.
    if (tripId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripId');
    }

    final path = r'/api/trips/{tripId}/proof-of-delivery'
      .replaceAll('{' + 'tripId' + '}', tripId.toString());

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

  /// retrieveProofOfDelivery
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  Future<TripProofOfDeliveryModel> retrieveProofOfDelivery(String tripId) async {
    final response = await retrieveProofOfDeliveryWithHttpInfo(tripId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TripProofOfDeliveryModel') as TripProofOfDeliveryModel;
        }
    return Future<TripProofOfDeliveryModel>.value(null);
  }

  /// retrieveTrip
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  Future<Response> retrieveTripWithHttpInfo(String tripId) async {
    // Verify required params are set.
    if (tripId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripId');
    }

    final path = r'/api/trips/{tripId}'
      .replaceAll('{' + 'tripId' + '}', tripId.toString());

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

  /// retrieveTrip
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  Future<TripModel> retrieveTrip(String tripId) async {
    final response = await retrieveTripWithHttpInfo(tripId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TripModel') as TripModel;
        }
    return Future<TripModel>.value(null);
  }

  /// retrieveTripStatus
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  Future<Response> retrieveTripStatusWithHttpInfo(String tripId) async {
    // Verify required params are set.
    if (tripId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripId');
    }

    final path = r'/api/trips/{tripId}/status'
      .replaceAll('{' + 'tripId' + '}', tripId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

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

  /// retrieveTripStatus
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  Future<TripModel> retrieveTripStatus(String tripId) async {
    final response = await retrieveTripStatusWithHttpInfo(tripId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TripModel') as TripModel;
        }
    return Future<TripModel>.value(null);
  }

  /// updateTrip
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  ///
  /// * [TripModel] tripModel (required):
  Future<Response> updateTripWithHttpInfo(String tripId, TripModel tripModel) async {
    // Verify required params are set.
    if (tripId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripId');
    }
    if (tripModel == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripModel');
    }

    final path = r'/api/trips/{tripId}'
      .replaceAll('{' + 'tripId' + '}', tripId.toString());

    Object postBody = tripModel;

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

  /// updateTrip
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  ///
  /// * [TripModel] tripModel (required):
  Future<TripModel> updateTrip(String tripId, TripModel tripModel) async {
    final response = await updateTripWithHttpInfo(tripId, tripModel);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TripModel') as TripModel;
        }
    return Future<TripModel>.value(null);
  }

  /// uploadProofOfDelivery
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  ///
  /// * [String] type (required):
  ///
  /// * [String] recipientName:
  ///
  /// * [String] photoUrl:
  ///
  /// * [MultipartFile] photofile:
  ///
  /// * [String] createdBy:
  ///
  /// * [num] createdAt:
  Future<Response> uploadProofOfDeliveryWithHttpInfo(String tripId, String type, { String recipientName, String photoUrl, MultipartFile photofile, String createdBy, num createdAt }) async {
    // Verify required params are set.
    if (tripId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tripId');
    }
    if (type == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: type');
    }

    final path = r'/api/trips/proof-of-delivery';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['multipart/form-data'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY', 'ID_TOKEN'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (tripId != null) {
        hasFields = true;
        mp.fields[r'tripId'] = parameterToString(tripId);
      }
      if (type != null) {
        hasFields = true;
        mp.fields[r'type'] = parameterToString(type);
      }
      if (recipientName != null) {
        hasFields = true;
        mp.fields[r'recipientName'] = parameterToString(recipientName);
      }
      if (photoUrl != null) {
        hasFields = true;
        mp.fields[r'photoUrl'] = parameterToString(photoUrl);
      }
      if (photofile != null) {
        hasFields = true;
        mp.fields[r'photofile'] = photofile.field;
        mp.files.add(photofile);
      }
      if (createdBy != null) {
        hasFields = true;
        mp.fields[r'createdBy'] = parameterToString(createdBy);
      }
      if (createdAt != null) {
        hasFields = true;
        mp.fields[r'createdAt'] = parameterToString(createdAt);
      }
      if (hasFields) {
        postBody = mp;
      }
    } else {
      if (tripId != null) {
        formParams[r'tripId'] = parameterToString(tripId);
      }
      if (type != null) {
        formParams[r'type'] = parameterToString(type);
      }
      if (recipientName != null) {
        formParams[r'recipientName'] = parameterToString(recipientName);
      }
      if (photoUrl != null) {
        formParams[r'photoUrl'] = parameterToString(photoUrl);
      }
      if (createdBy != null) {
        formParams[r'createdBy'] = parameterToString(createdBy);
      }
      if (createdAt != null) {
        formParams[r'createdAt'] = parameterToString(createdAt);
      }
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

  /// uploadProofOfDelivery
  ///
  /// Parameters:
  ///
  /// * [String] tripId (required):
  ///
  /// * [String] type (required):
  ///
  /// * [String] recipientName:
  ///
  /// * [String] photoUrl:
  ///
  /// * [MultipartFile] photofile:
  ///
  /// * [String] createdBy:
  ///
  /// * [num] createdAt:
  Future<TripProofOfDeliveryModel> uploadProofOfDelivery(String tripId, String type, { String recipientName, String photoUrl, MultipartFile photofile, String createdBy, num createdAt }) async {
    final response = await uploadProofOfDeliveryWithHttpInfo(tripId, type,  recipientName: recipientName, photoUrl: photoUrl, photofile: photofile, createdBy: createdBy, createdAt: createdAt );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TripProofOfDeliveryModel') as TripProofOfDeliveryModel;
        }
    return Future<TripProofOfDeliveryModel>.value(null);
  }
}
