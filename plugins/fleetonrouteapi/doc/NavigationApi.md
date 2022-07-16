# fleetonrouteapi.api.NavigationApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTileImage**](NavigationApi.md#gettileimage) | **POST** /api/navigation/{organizationId}/tile-image | getTileImage
[**optimizeRoute**](NavigationApi.md#optimizeroute) | **POST** /api/navigation/{organizationId}/optimize-route | optimizeRoute


# **getTileImage**
> TileImageResponseModel getTileImage(latitude, longitude, height, width, zoom, organizationId)

getTileImage

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = NavigationApi();
final latitude = 8.14; // num | 
final longitude = 8.14; // num | 
final height = 8.14; // num | 
final width = 8.14; // num | 
final zoom = 8.14; // num | 
final organizationId = organizationId_example; // String | 

try { 
    final result = api_instance.getTileImage(latitude, longitude, height, width, zoom, organizationId);
    print(result);
} catch (e) {
    print('Exception when calling NavigationApi->getTileImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **num**|  | 
 **longitude** | **num**|  | 
 **height** | **num**|  | 
 **width** | **num**|  | 
 **zoom** | **num**|  | 
 **organizationId** | **String**|  | 

### Return type

[**TileImageResponseModel**](TileImageResponseModel.md)

### Authorization

[ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **optimizeRoute**
> OptimizedRouteResponseModel optimizeRoute(organizationId, optimizedRouteRequestPayloadModel)

optimizeRoute

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = NavigationApi();
final organizationId = organizationId_example; // String | 
final optimizedRouteRequestPayloadModel = OptimizedRouteRequestPayloadModel(); // OptimizedRouteRequestPayloadModel | 

try { 
    final result = api_instance.optimizeRoute(organizationId, optimizedRouteRequestPayloadModel);
    print(result);
} catch (e) {
    print('Exception when calling NavigationApi->optimizeRoute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **optimizedRouteRequestPayloadModel** | [**OptimizedRouteRequestPayloadModel**](OptimizedRouteRequestPayloadModel.md)|  | 

### Return type

[**OptimizedRouteResponseModel**](OptimizedRouteResponseModel.md)

### Authorization

[ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

