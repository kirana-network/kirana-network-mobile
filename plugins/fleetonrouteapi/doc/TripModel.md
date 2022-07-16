# fleetonrouteapi.model.TripModel

## Load the model package
```dart
import 'package:fleetonrouteapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**organizationId** | **String** |  | 
**gpsUnitId** | **String** |  | [optional] 
**userProfileId** | **String** |  | [optional] 
**client** | [**TripClientModel**](TripClientModel.md) |  | 
**address** | **String** |  | [optional] 
**location** | [**LatLngModel**](LatLngModel.md) |  | [optional] 
**scheduledAt** | [**ScheduleDateModel**](ScheduleDateModel.md) | The scheduled date and time for this trip. | 
**tripStatus** | **String** |  | 
**createdAt** | **num** |  | 
**updatedAt** | **num** |  | 
**createdBy** | **String** |  | 
**updatedBy** | **String** |  | 
**tripType** | **String** |  | 
**extra** | [**Map**](.md) |  | [optional] 
**options** | [**TripOptionsModel**](TripOptionsModel.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


