# fleetonrouteapi.api.UserprofilesApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserProfile**](UserprofilesApi.md#createuserprofile) | **POST** /api/userprofiles | createUserProfile
[**deleteCustomerProfile**](UserprofilesApi.md#deletecustomerprofile) | **DELETE** /api/userprofiles/{userProfileId}/customer-profiles/{customerProfileId} | deleteCustomerProfile
[**deleteInvitation**](UserprofilesApi.md#deleteinvitation) | **DELETE** /api/userprofiles/{userProfileId}/invitations/{organizationId} | deleteInvitation
[**deleteUserProfile**](UserprofilesApi.md#deleteuserprofile) | **DELETE** /api/userprofiles/{userProfileId} | deleteUserProfile
[**listApiKeys**](UserprofilesApi.md#listapikeys) | **GET** /api/userprofiles/{userProfileId}/api-keys | listApiKeys
[**listCustomerProfiles**](UserprofilesApi.md#listcustomerprofiles) | **GET** /api/userprofiles/{userProfileId}/customer-profiles | listCustomerProfiles
[**listInvitations**](UserprofilesApi.md#listinvitations) | **GET** /api/userprofiles/{userProfileId}/invitations | listInvitations
[**listTrips**](UserprofilesApi.md#listtrips) | **GET** /api/userprofiles/{userProfileId}/trips | listTrips
[**listUserProfileOrganizations**](UserprofilesApi.md#listuserprofileorganizations) | **GET** /api/userprofiles/{userProfileId}/organizations | listUserProfileOrganizations
[**listUserProfiles**](UserprofilesApi.md#listuserprofiles) | **GET** /api/userprofiles | listUserProfiles will be replaced by queryUserProfiles
[**retrieveInvitation**](UserprofilesApi.md#retrieveinvitation) | **GET** /api/userprofiles/{userProfileId}/invitations/{organizationId} | retrieveInvitation
[**retrieveUserProfile**](UserprofilesApi.md#retrieveuserprofile) | **GET** /api/userprofiles/{userProfileId} | retrieveUserProfile
[**setupCustomerProfile**](UserprofilesApi.md#setupcustomerprofile) | **POST** /api/userprofiles/{userProfileId}/customer-profiles | setupCustomerProfile
[**updateInvitation**](UserprofilesApi.md#updateinvitation) | **PUT** /api/userprofiles/{userProfileId}/invitations/{organizationId} | updateInvitation
[**updateUserProfile**](UserprofilesApi.md#updateuserprofile) | **PUT** /api/userprofiles/{userProfileId} | updateUserProfile
[**updateUserProfileOrganization**](UserprofilesApi.md#updateuserprofileorganization) | **PUT** /api/userprofiles/{userProfileId}/organization/{organizationId} | updateUserProfileOrganization


# **createUserProfile**
> UserProfileModel createUserProfile(userProfileModel)

createUserProfile

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

final api_instance = UserprofilesApi();
final userProfileModel = UserProfileModel(); // UserProfileModel | 

try { 
    final result = api_instance.createUserProfile(userProfileModel);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->createUserProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileModel** | [**UserProfileModel**](UserProfileModel.md)|  | 

### Return type

[**UserProfileModel**](UserProfileModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerProfile**
> Map deleteCustomerProfile(customerProfileId, userProfileId)

deleteCustomerProfile

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

final api_instance = UserprofilesApi();
final customerProfileId = customerProfileId_example; // String | 
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.deleteCustomerProfile(customerProfileId, userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->deleteCustomerProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerProfileId** | **String**|  | 
 **userProfileId** | **String**|  | 

### Return type

[**Map**](Object.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvitation**
> Map deleteInvitation(organizationId, userProfileId)

deleteInvitation

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

final api_instance = UserprofilesApi();
final organizationId = organizationId_example; // String | 
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.deleteInvitation(organizationId, userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->deleteInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **userProfileId** | **String**|  | 

### Return type

[**Map**](Object.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserProfile**
> bool deleteUserProfile(userProfileId)

deleteUserProfile

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

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.deleteUserProfile(userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->deleteUserProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 

### Return type

**bool**

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApiKeys**
> ListOfApiKeysModel listApiKeys(userProfileId, sort)

listApiKeys

### Example 
```dart
import 'package:fleetonrouteapi/api.dart';
// TODO Configure API key authorization: ID_TOKEN
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ID_TOKEN').apiKeyPrefix = 'Bearer';

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 
final sort = {"field":"id","order":"ASC"}; // String | 

try { 
    final result = api_instance.listApiKeys(userProfileId, sort);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->listApiKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 
 **sort** | **String**|  | [optional] 

### Return type

[**ListOfApiKeysModel**](ListOfApiKeysModel.md)

### Authorization

[ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomerProfiles**
> ListOfCustomerProfilesModel listCustomerProfiles(userProfileId)

listCustomerProfiles

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

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.listCustomerProfiles(userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->listCustomerProfiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 

### Return type

[**ListOfCustomerProfilesModel**](ListOfCustomerProfilesModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvitations**
> List<InvitationModel> listInvitations(userProfileId)

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

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.listInvitations(userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->listInvitations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 

### Return type

[**List<InvitationModel>**](InvitationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTrips**
> ListOfTripsModel listTrips(userProfileId, tripType, tripStatus, endDate, startDate)

listTrips

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

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 
final tripType = tripType_example; // String | 
final tripStatus = tripStatus_example; // String | 
final endDate = endDate_example; // String | 
final startDate = startDate_example; // String | 

try { 
    final result = api_instance.listTrips(userProfileId, tripType, tripStatus, endDate, startDate);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->listTrips: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 
 **tripType** | **String**|  | [optional] 
 **tripStatus** | **String**|  | [optional] 
 **endDate** | **String**|  | [optional] 
 **startDate** | **String**|  | [optional] 

### Return type

[**ListOfTripsModel**](ListOfTripsModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserProfileOrganizations**
> List<UserProfileOrganizationModel> listUserProfileOrganizations(userProfileId)

listUserProfileOrganizations

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

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.listUserProfileOrganizations(userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->listUserProfileOrganizations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 

### Return type

[**List<UserProfileOrganizationModel>**](UserProfileOrganizationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserProfiles**
> ListOfUserProfilesModel listUserProfiles(filter, range, sort)

listUserProfiles will be replaced by queryUserProfiles

'listUserProfiles' is deprecated. Please use 'OrganizationsApi.listUserProfiles' instead.

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

final api_instance = UserprofilesApi();
final filter = {"ids": ["USER_ID_1", "USER_ID_2"]}; // String | 
final range = [0, 20]; // String | 
final sort = {"field":"id","order":"ASC"}; // String | 

try { 
    final result = api_instance.listUserProfiles(filter, range, sort);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->listUserProfiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | 
 **range** | **String**|  | [optional] 
 **sort** | **String**|  | [optional] 

### Return type

[**ListOfUserProfilesModel**](ListOfUserProfilesModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveInvitation**
> InvitationModel retrieveInvitation(organizationId, userProfileId)

retrieveInvitation

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

final api_instance = UserprofilesApi();
final organizationId = organizationId_example; // String | 
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.retrieveInvitation(organizationId, userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->retrieveInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **userProfileId** | **String**|  | 

### Return type

[**InvitationModel**](InvitationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveUserProfile**
> UserProfileModel retrieveUserProfile(userProfileId)

retrieveUserProfile

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

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 

try { 
    final result = api_instance.retrieveUserProfile(userProfileId);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->retrieveUserProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 

### Return type

[**UserProfileModel**](UserProfileModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setupCustomerProfile**
> SetupCustomerProfileResponseModel setupCustomerProfile(userProfileId, setupCustomerProfileRequestModel)

setupCustomerProfile

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

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 
final setupCustomerProfileRequestModel = SetupCustomerProfileRequestModel(); // SetupCustomerProfileRequestModel | 

try { 
    final result = api_instance.setupCustomerProfile(userProfileId, setupCustomerProfileRequestModel);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->setupCustomerProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 
 **setupCustomerProfileRequestModel** | [**SetupCustomerProfileRequestModel**](SetupCustomerProfileRequestModel.md)|  | 

### Return type

[**SetupCustomerProfileResponseModel**](SetupCustomerProfileResponseModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInvitation**
> InvitationModel updateInvitation(organizationId, userProfileId, invitationPayloadModel)

updateInvitation

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

final api_instance = UserprofilesApi();
final organizationId = organizationId_example; // String | 
final userProfileId = userProfileId_example; // String | 
final invitationPayloadModel = InvitationPayloadModel(); // InvitationPayloadModel | 

try { 
    final result = api_instance.updateInvitation(organizationId, userProfileId, invitationPayloadModel);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->updateInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **userProfileId** | **String**|  | 
 **invitationPayloadModel** | [**InvitationPayloadModel**](InvitationPayloadModel.md)|  | 

### Return type

[**InvitationModel**](InvitationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserProfile**
> UserProfileModel updateUserProfile(userProfileId, userProfileModel)

updateUserProfile

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

final api_instance = UserprofilesApi();
final userProfileId = userProfileId_example; // String | 
final userProfileModel = UserProfileModel(); // UserProfileModel | 

try { 
    final result = api_instance.updateUserProfile(userProfileId, userProfileModel);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->updateUserProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileId** | **String**|  | 
 **userProfileModel** | [**UserProfileModel**](UserProfileModel.md)|  | 

### Return type

[**UserProfileModel**](UserProfileModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserProfileOrganization**
> UserProfileOrganizationModel updateUserProfileOrganization(organizationId, userProfileId, userProfileOrganizationModel)

updateUserProfileOrganization

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

final api_instance = UserprofilesApi();
final organizationId = organizationId_example; // String | 
final userProfileId = userProfileId_example; // String | 
final userProfileOrganizationModel = UserProfileOrganizationModel(); // UserProfileOrganizationModel | 

try { 
    final result = api_instance.updateUserProfileOrganization(organizationId, userProfileId, userProfileOrganizationModel);
    print(result);
} catch (e) {
    print('Exception when calling UserprofilesApi->updateUserProfileOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **userProfileId** | **String**|  | 
 **userProfileOrganizationModel** | [**UserProfileOrganizationModel**](UserProfileOrganizationModel.md)|  | 

### Return type

[**UserProfileOrganizationModel**](UserProfileOrganizationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

