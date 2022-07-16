# fleetonrouteapi.api.ServicestatusApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**retrieveServiceStatus**](ServicestatusApi.md#retrieveservicestatus) | **GET** /api/servicestatus | retrieveServiceStatus
[**retrieveSupportedApiVersions**](ServicestatusApi.md#retrievesupportedapiversions) | **GET** /api/servicestatus/versions | retrieveSupportedApiVersions


# **retrieveServiceStatus**
> ListOfActionTogglesModel retrieveServiceStatus()

retrieveServiceStatus

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';

final api_instance = ServicestatusApi();

try { 
    final result = api_instance.retrieveServiceStatus();
    print(result);
} catch (e) {
    print('Exception when calling ServicestatusApi->retrieveServiceStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListOfActionTogglesModel**](ListOfActionTogglesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveSupportedApiVersions**
> SupportedApiVersionsModel retrieveSupportedApiVersions()

retrieveSupportedApiVersions

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';

final api_instance = ServicestatusApi();

try { 
    final result = api_instance.retrieveSupportedApiVersions();
    print(result);
} catch (e) {
    print('Exception when calling ServicestatusApi->retrieveSupportedApiVersions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SupportedApiVersionsModel**](SupportedApiVersionsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

