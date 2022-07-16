# fleetonrouteapi.api.AuthApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiKey**](AuthApi.md#createapikey) | **POST** /api/auth/api-key | Create ApiKey
[**deleteApiKey**](AuthApi.md#deleteapikey) | **DELETE** /api/auth/api-key/{keyId} | Delete ApiKey
[**login**](AuthApi.md#login) | **POST** /api/auth | Login
[**publicAuthControllerRenderLoginPage**](AuthApi.md#publicauthcontrollerrenderloginpage) | **GET** /api/auth | 
[**refreshToken**](AuthApi.md#refreshtoken) | **POST** /api/auth/refresh-token | Refresh Token


# **createApiKey**
> ApiKeyModel createApiKey(createApiKeyRequestModel)

Create ApiKey

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final createApiKeyRequestModel = CreateApiKeyRequestModel(); // CreateApiKeyRequestModel | 

try { 
    final result = api_instance.createApiKey(createApiKeyRequestModel);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->createApiKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createApiKeyRequestModel** | [**CreateApiKeyRequestModel**](CreateApiKeyRequestModel.md)|  | 

### Return type

[**ApiKeyModel**](ApiKeyModel.md)

### Authorization

[ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiKey**
> bool deleteApiKey(keyId)

Delete ApiKey

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final keyId = keyId_example; // String | 

try { 
    final result = api_instance.deleteApiKey(keyId);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->deleteApiKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **String**|  | 

### Return type

**bool**

### Authorization

[ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> AuthUserModel login(loginPayloadModel)

Login

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';

final api_instance = AuthApi();
final loginPayloadModel = LoginPayloadModel(); // LoginPayloadModel | 

try { 
    final result = api_instance.login(loginPayloadModel);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginPayloadModel** | [**LoginPayloadModel**](LoginPayloadModel.md)|  | 

### Return type

[**AuthUserModel**](AuthUserModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publicAuthControllerRenderLoginPage**
> publicAuthControllerRenderLoginPage()



### Example 
```dart
import 'package:fleetonrouteapi/api.dart';

final api_instance = AuthApi();

try { 
    api_instance.publicAuthControllerRenderLoginPage();
} catch (e) {
    print('Exception when calling AuthApi->publicAuthControllerRenderLoginPage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
> RefreshTokenResponseModel refreshToken(refreshTokenPayloadModel)

Refresh Token

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';

final api_instance = AuthApi();
final refreshTokenPayloadModel = RefreshTokenPayloadModel(); // RefreshTokenPayloadModel | 

try { 
    final result = api_instance.refreshToken(refreshTokenPayloadModel);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenPayloadModel** | [**RefreshTokenPayloadModel**](RefreshTokenPayloadModel.md)|  | 

### Return type

[**RefreshTokenResponseModel**](RefreshTokenResponseModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

