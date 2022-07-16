# fleetonrouteapi.api.GpsunitsApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGpsUnit**](GpsunitsApi.md#creategpsunit) | **POST** /api/gpsunits/{userProfileId}/gpsunits | createGpsUnit
[**retrieveGpsUnit**](GpsunitsApi.md#retrievegpsunit) | **GET** /api/gpsunits/{userProfileId}/gpsunits/{gpsUnitId} | retrieveGpsUnit
[**updateGpsUnit**](GpsunitsApi.md#updategpsunit) | **PUT** /api/gpsunits/{userProfileId}/gpsunits/{gpsUnitId} | updateGpsUnit


# **createGpsUnit**
> GPSUnitModel createGpsUnit(userProfileId, gPSUnitModel)

createGpsUnit

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

final api_instance = GpsunitsApi();
final userProfileId = userProfileId_example; // String | 
final gPSUnitModel = GPSUnitModel(); // GPSUnitModel | 

try { 
    final result = api_instance.createGpsUnit(userProfileId, gPSUnitModel);
    print(result);
} catch (e) {
    print('Exception when calling GpsunitsApi->createGpsUnit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 
 **gPSUnitModel** | [**GPSUnitModel**](GPSUnitModel.md)|  | 

### Return type

[**GPSUnitModel**](GPSUnitModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGpsUnit**
> GPSUnitModel retrieveGpsUnit(gpsUnitId, userProfileId)

retrieveGpsUnit

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

final api_instance = GpsunitsApi();
final gpsUnitId = gpsUnitId_example; // String | 
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.retrieveGpsUnit(gpsUnitId, userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling GpsunitsApi->retrieveGpsUnit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gpsUnitId** | **String**|  | 
 **userProfileId** | **String**|  | 

### Return type

[**GPSUnitModel**](GPSUnitModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGpsUnit**
> GPSUnitModel updateGpsUnit(gpsUnitId, userProfileId, gPSUnitModel)

updateGpsUnit

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

final api_instance = GpsunitsApi();
final gpsUnitId = gpsUnitId_example; // String | 
final userProfileId = userProfileId_example; // String | 
final gPSUnitModel = GPSUnitModel(); // GPSUnitModel | 

try { 
    final result = api_instance.updateGpsUnit(gpsUnitId, userProfileId, gPSUnitModel);
    print(result);
} catch (e) {
    print('Exception when calling GpsunitsApi->updateGpsUnit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gpsUnitId** | **String**|  | 
 **userProfileId** | **String**|  | 
 **gPSUnitModel** | [**GPSUnitModel**](GPSUnitModel.md)|  | 

### Return type

[**GPSUnitModel**](GPSUnitModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

