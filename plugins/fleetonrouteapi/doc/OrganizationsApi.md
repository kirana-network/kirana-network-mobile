# fleetonrouteapi.api.OrganizationsApi

## Load the API package
```dart
import 'package:fleetonrouteapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachCustomerProfile**](OrganizationsApi.md#attachcustomerprofile) | **POST** /api/organizations/{organizationId}/customer-profiles | attachCustomerProfile
[**createClient**](OrganizationsApi.md#createclient) | **POST** /api/organizations/{organizationId}/clients | createClient
[**createOrganization**](OrganizationsApi.md#createorganization) | **POST** /api/organizations | createOrganization
[**deleteCustomerProfile**](OrganizationsApi.md#deletecustomerprofile) | **DELETE** /api/organizations/{organizationId}/customer-profiles | deleteCustomerProfile
[**listClients**](OrganizationsApi.md#listclients) | **GET** /api/organizations/{organizationId}/clients | listClients
[**listInvitations**](OrganizationsApi.md#listinvitations) | **GET** /api/organizations/{organizationId}/invitations | listInvitations
[**listOrganizationUserProfiles**](OrganizationsApi.md#listorganizationuserprofiles) | **GET** /api/organizations/{organizationId}/userprofiles | listOrganizationUserProfiles
[**listOrganizations**](OrganizationsApi.md#listorganizations) | **GET** /api/organizations | listOrganizations
[**listTrips**](OrganizationsApi.md#listtrips) | **GET** /api/organizations/{organizationId}/trips | listTrips
[**retrieveClient**](OrganizationsApi.md#retrieveclient) | **GET** /api/organizations/{organizationId}/clients/{clientId} | retrieveClient
[**retrieveCustomerProfile**](OrganizationsApi.md#retrievecustomerprofile) | **GET** /api/organizations/{organizationId}/customer-profiles | retrieveCustomerProfile
[**retrieveOrganization**](OrganizationsApi.md#retrieveorganization) | **GET** /api/organizations/{organizationId} | retrieveOrganization
[**updateClient**](OrganizationsApi.md#updateclient) | **PUT** /api/organizations/{organizationId}/clients/{clientId} | updateClient
[**updateOrganization**](OrganizationsApi.md#updateorganization) | **PUT** /api/organizations/{organizationId} | updateOrganization
[**updateOrganizationUserProfile**](OrganizationsApi.md#updateorganizationuserprofile) | **PUT** /api/organizations/{organizationId}/userprofiles/{userProfileId} | updateOrganizationUserProfile


# **attachCustomerProfile**
> OrganizationCustomerProfileModel attachCustomerProfile(organizationId, customerProfileModel)

attachCustomerProfile

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 
final customerProfileModel = CustomerProfileModel(); // CustomerProfileModel | 

try { 
    final result = api_instance.attachCustomerProfile(organizationId, customerProfileModel);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->attachCustomerProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **customerProfileModel** | [**CustomerProfileModel**](CustomerProfileModel.md)|  | 

### Return type

[**OrganizationCustomerProfileModel**](OrganizationCustomerProfileModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createClient**
> ClientModel createClient(organizationId, clientModel)

createClient

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 
final clientModel = ClientModel(); // ClientModel | 

try { 
    final result = api_instance.createClient(organizationId, clientModel);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->createClient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **clientModel** | [**ClientModel**](ClientModel.md)|  | 

### Return type

[**ClientModel**](ClientModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganization**
> OrganizationModel createOrganization(organizationModel)

createOrganization

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

final api_instance = OrganizationsApi();
final organizationModel = OrganizationModel(); // OrganizationModel | 

try { 
    final result = api_instance.createOrganization(organizationModel);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->createOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationModel** | [**OrganizationModel**](OrganizationModel.md)|  | 

### Return type

[**OrganizationModel**](OrganizationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerProfile**
> Map deleteCustomerProfile(organizationId, customerProfileModel)

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 
final customerProfileModel = CustomerProfileModel(); // CustomerProfileModel | 

try { 
    final result = api_instance.deleteCustomerProfile(organizationId, customerProfileModel);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->deleteCustomerProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **customerProfileModel** | [**CustomerProfileModel**](CustomerProfileModel.md)|  | 

### Return type

[**Map**](Object.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listClients**
> ListOfClientsModel listClients(organizationId)

listClients

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 

try { 
    final result = api_instance.listClients(organizationId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listClients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**ListOfClientsModel**](ListOfClientsModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 

try { 
    final result = api_instance.listInvitations(organizationId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listInvitations: $e\n');
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

# **listOrganizationUserProfiles**
> ListOfOrganizationUserProfilesModel listOrganizationUserProfiles(organizationId)

listOrganizationUserProfiles

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 

try { 
    final result = api_instance.listOrganizationUserProfiles(organizationId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listOrganizationUserProfiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**ListOfOrganizationUserProfilesModel**](ListOfOrganizationUserProfilesModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizations**
> ListOfOrganizationsModel listOrganizations(sort, range, filter)

listOrganizations

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

final api_instance = OrganizationsApi();
final sort = {"field":"id","order":"ASC"}; // String | 
final range = [0,20]; // String | 
final filter = {"ids":["ORGANIZATION_ID_1", "ORGANIZATION_ID_2"]}; // String | 

try { 
    final result = api_instance.listOrganizations(sort, range, filter);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listOrganizations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**|  | [optional] 
 **range** | **String**|  | [optional] 
 **filter** | **String**|  | [optional] 

### Return type

[**ListOfOrganizationsModel**](ListOfOrganizationsModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTrips**
> ListOfTripsModel listTrips(organizationId, clientId)

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 
final clientId = clientId_example; // String | 

try { 
    final result = api_instance.listTrips(organizationId, clientId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listTrips: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **clientId** | **String**|  | [optional] 

### Return type

[**ListOfTripsModel**](ListOfTripsModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveClient**
> ClientModel retrieveClient(clientId, organizationId)

retrieveClient

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

final api_instance = OrganizationsApi();
final clientId = clientId_example; // String | 
final organizationId = organizationId_example; // String | 

try { 
    final result = api_instance.retrieveClient(clientId, organizationId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->retrieveClient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **organizationId** | **String**|  | 

### Return type

[**ClientModel**](ClientModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCustomerProfile**
> OrganizationCustomerProfileModel retrieveCustomerProfile(organizationId)

retrieveCustomerProfile

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 

try { 
    final result = api_instance.retrieveCustomerProfile(organizationId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->retrieveCustomerProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**OrganizationCustomerProfileModel**](OrganizationCustomerProfileModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveOrganization**
> OrganizationModel retrieveOrganization(organizationId)

retrieveOrganization

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 

try { 
    final result = api_instance.retrieveOrganization(organizationId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->retrieveOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**OrganizationModel**](OrganizationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateClient**
> ClientModel updateClient(clientId, organizationId, clientModel)

updateClient

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

final api_instance = OrganizationsApi();
final clientId = clientId_example; // String | 
final organizationId = organizationId_example; // String | 
final clientModel = ClientModel(); // ClientModel | 

try { 
    final result = api_instance.updateClient(clientId, organizationId, clientModel);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->updateClient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **organizationId** | **String**|  | 
 **clientModel** | [**ClientModel**](ClientModel.md)|  | 

### Return type

[**ClientModel**](ClientModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganization**
> OrganizationModel updateOrganization(organizationId, organizationModel)

updateOrganization

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 
final organizationModel = OrganizationModel(); // OrganizationModel | 

try { 
    final result = api_instance.updateOrganization(organizationId, organizationModel);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->updateOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **organizationModel** | [**OrganizationModel**](OrganizationModel.md)|  | 

### Return type

[**OrganizationModel**](OrganizationModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationUserProfile**
> OrganizationUserProfileModel updateOrganizationUserProfile(organizationId, userProfileId, organizationUserProfileModel)

updateOrganizationUserProfile

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

final api_instance = OrganizationsApi();
final organizationId = organizationId_example; // String | 
final userProfileId = userProfileId_example; // String | 
final organizationUserProfileModel = OrganizationUserProfileModel(); // OrganizationUserProfileModel | 

try { 
    final result = api_instance.updateOrganizationUserProfile(organizationId, userProfileId, organizationUserProfileModel);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->updateOrganizationUserProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **userProfileId** | **String**|  | 
 **organizationUserProfileModel** | [**OrganizationUserProfileModel**](OrganizationUserProfileModel.md)|  | 

### Return type

[**OrganizationUserProfileModel**](OrganizationUserProfileModel.md)

### Authorization

[API_KEY](../README.md#API_KEY), [ID_TOKEN](../README.md#ID_TOKEN)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

