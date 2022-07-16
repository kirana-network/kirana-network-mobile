# fleetonrouteapi.api.ClientsApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listClients**](ClientsApi.md#listclients) | **GET** /api/clients | listClients


# **listClients**
> ListOfClientsModel listClients(filter, sort, range)

listClients

Deprecated. See Ok Response for more information.

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

final api_instance = ClientsApi();
final filter = {"organizationId":"ORGANIZATION_ID"}; // String | 
final sort = {"field":"id","order":"ASC"}; // String | 
final range = [0,20]; // String | 

try { 
    final result = api_instance.listClients(filter, sort, range);
    print(result);
} catch (e) {
    print('Exception when calling ClientsApi->listClients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | 
 **sort** | **String**|  | [optional] 
 **range** | **String**|  | [optional] 

### Return type

[**ListOfClientsModel**](ListOfClientsModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

