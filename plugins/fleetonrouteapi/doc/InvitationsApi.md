# fleetonrouteapi.api.InvitationsApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInvitation**](InvitationsApi.md#createinvitation) | **POST** /api/invitations | createInvitation
[**listInvitations**](InvitationsApi.md#listinvitations) | **GET** /api/organizations/{organizationId}/invitations | listInvitations


# **createInvitation**
> InvitationModel createInvitation(createInvitationPayloadModel)

createInvitation

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

final api_instance = InvitationsApi();
final createInvitationPayloadModel = CreateInvitationPayloadModel(); // CreateInvitationPayloadModel | 

try { 
    final result = api_instance.createInvitation(createInvitationPayloadModel);
    print(result);
} catch (e) {
    print('Exception when calling InvitationsApi->createInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInvitationPayloadModel** | [**CreateInvitationPayloadModel**](CreateInvitationPayloadModel.md)|  | 

### Return type

[**InvitationModel**](InvitationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvitations**
> ListOfInvitationsModel listInvitations(organizationId)

listInvitations

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

final api_instance = InvitationsApi();
final organizationId = organizationId_example; // String | 

try { 
    final result = api_instance.listInvitations(organizationId);
    print(result);
} catch (e) {
    print('Exception when calling InvitationsApi->listInvitations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**ListOfInvitationsModel**](ListOfInvitationsModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

