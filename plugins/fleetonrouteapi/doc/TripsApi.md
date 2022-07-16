# fleetonrouteapi.api.TripsApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrip**](TripsApi.md#createtrip) | **POST** /api/trips | createTrip
[**createTripNote**](TripsApi.md#createtripnote) | **POST** /api/trips/{tripId}/notes | createTripNote
[**deleteTripNote**](TripsApi.md#deletetripnote) | **DELETE** /api/trips/{tripId}/notes/{tripNoteId} | deleteTripNote
[**listTripNotes**](TripsApi.md#listtripnotes) | **GET** /api/trips/{tripId}/notes | listTripNotes
[**listTrips**](TripsApi.md#listtrips) | **GET** /api/trips | listTrips
[**retrieveProofOfDelivery**](TripsApi.md#retrieveproofofdelivery) | **GET** /api/trips/{tripId}/proof-of-delivery | retrieveProofOfDelivery
[**retrieveTrip**](TripsApi.md#retrievetrip) | **GET** /api/trips/{tripId} | retrieveTrip
[**retrieveTripStatus**](TripsApi.md#retrievetripstatus) | **GET** /api/trips/{tripId}/status | retrieveTripStatus
[**updateTrip**](TripsApi.md#updatetrip) | **PUT** /api/trips/{tripId} | updateTrip
[**uploadProofOfDelivery**](TripsApi.md#uploadproofofdelivery) | **POST** /api/trips/proof-of-delivery | uploadProofOfDelivery


# **createTrip**
> TripModel createTrip(tripModel)

createTrip

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = TripsApi();
final tripModel = TripModel(); // TripModel | 

try { 
    final result = api_instance.createTrip(tripModel);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->createTrip: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripModel** | [**TripModel**](TripModel.md)|  | 

### Return type

[**TripModel**](TripModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTripNote**
> ListOfTripNotesModel createTripNote(tripId, tripNoteModel)

createTripNote

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = TripsApi();
final tripId = tripId_example; // String | 
final tripNoteModel = TripNoteModel(); // TripNoteModel | 

try { 
    final result = api_instance.createTripNote(tripId, tripNoteModel);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->createTripNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **String**|  | 
 **tripNoteModel** | [**TripNoteModel**](TripNoteModel.md)|  | 

### Return type

[**ListOfTripNotesModel**](ListOfTripNotesModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTripNote**
> bool deleteTripNote(tripNoteId, tripId)

deleteTripNote

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = TripsApi();
final tripNoteId = tripNoteId_example; // String | 
final tripId = tripId_example; // String | 

try { 
    final result = api_instance.deleteTripNote(tripNoteId, tripId);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->deleteTripNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripNoteId** | **String**|  | 
 **tripId** | **String**|  | 

### Return type

**bool**

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTripNotes**
> ListOfTripNotesModel listTripNotes(tripId)

listTripNotes

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';

final api_instance = TripsApi();
final tripId = tripId_example; // String | 

try { 
    final result = api_instance.listTripNotes(tripId);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->listTripNotes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **String**|  | 

### Return type

[**ListOfTripNotesModel**](ListOfTripNotesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTrips**
> ListOfTripsModel listTrips(organizationIds)

listTrips

'listTrips' operation is deprecated. Please use OrganizationsApi instead.

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = TripsApi();
final organizationIds = [["ORGANIZATION_ID_1", "ORGANIZATION_ID_2"]]; // List<String> | 

try { 
    final result = api_instance.listTrips(organizationIds);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->listTrips: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationIds** | [**List<String>**](String.md)|  | [optional] [default to const []]

### Return type

[**ListOfTripsModel**](ListOfTripsModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveProofOfDelivery**
> TripProofOfDeliveryModel retrieveProofOfDelivery(tripId)

retrieveProofOfDelivery

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = TripsApi();
final tripId = tripId_example; // String | 

try { 
    final result = api_instance.retrieveProofOfDelivery(tripId);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->retrieveProofOfDelivery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **String**|  | 

### Return type

[**TripProofOfDeliveryModel**](TripProofOfDeliveryModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTrip**
> TripModel retrieveTrip(tripId)

retrieveTrip

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = TripsApi();
final tripId = tripId_example; // String | 

try { 
    final result = api_instance.retrieveTrip(tripId);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->retrieveTrip: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **String**|  | 

### Return type

[**TripModel**](TripModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTripStatus**
> TripModel retrieveTripStatus(tripId)

retrieveTripStatus

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';

final api_instance = TripsApi();
final tripId = tripId_example; // String | 

try { 
    final result = api_instance.retrieveTripStatus(tripId);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->retrieveTripStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **String**|  | 

### Return type

[**TripModel**](TripModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTrip**
> TripModel updateTrip(tripId, tripModel)

updateTrip

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = TripsApi();
final tripId = tripId_example; // String | 
final tripModel = TripModel(); // TripModel | 

try { 
    final result = api_instance.updateTrip(tripId, tripModel);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->updateTrip: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **String**|  | 
 **tripModel** | [**TripModel**](TripModel.md)|  | 

### Return type

[**TripModel**](TripModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadProofOfDelivery**
> TripProofOfDeliveryModel uploadProofOfDelivery(tripId, type, recipientName, photoUrl, photofile, createdBy, createdAt)

uploadProofOfDelivery

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = TripsApi();
final tripId = tripId_example; // String | 
final type = type_example; // String | 
final recipientName = recipientName_example; // String | 
final photoUrl = photoUrl_example; // String | 
final photofile = BINARY_DATA_HERE; // MultipartFile | 
final createdBy = createdBy_example; // String | 
final createdAt = 8.14; // num | 

try { 
    final result = api_instance.uploadProofOfDelivery(tripId, type, recipientName, photoUrl, photofile, createdBy, createdAt);
    print(result);
} catch (e) {
    print('Exception when calling TripsApi->uploadProofOfDelivery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **String**|  | 
 **type** | **String**|  | 
 **recipientName** | **String**|  | [optional] 
 **photoUrl** | **String**|  | [optional] 
 **photofile** | **MultipartFile**|  | [optional] 
 **createdBy** | **String**|  | [optional] 
 **createdAt** | **num**|  | [optional] 

### Return type

[**TripProofOfDeliveryModel**](TripProofOfDeliveryModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

