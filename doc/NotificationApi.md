# mobileid_api.api.NotificationApi

## Load the API package
```dart
import 'package:mobileid_api/api.dart';
```

All URIs are relative to *https://mobileid.ligasw.net:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNotification**](NotificationApi.md#getnotification) | **POST** /api/notifications/get | Retrieves a notification
[**listNotifications**](NotificationApi.md#listnotifications) | **GET** /api/notifications/ | List all notifications for the user
[**putNotificationResponse**](NotificationApi.md#putnotificationresponse) | **PUT** /api/notifications/ | Responds to a notification


# **getNotification**
> SignInNotification getNotification(notificationRetrievalRequest)

Retrieves a notification

none

### Example
```dart
import 'package:mobileid_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = MobileidApi().getNotificationApi();
final NotificationRetrievalRequest notificationRetrievalRequest = ; // NotificationRetrievalRequest | 

try {
    final response = api.getNotification(notificationRetrievalRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationApi->getNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationRetrievalRequest** | [**NotificationRetrievalRequest**](NotificationRetrievalRequest.md)|  | 

### Return type

[**SignInNotification**](SignInNotification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNotifications**
> NotificationListResponse listNotifications()

List all notifications for the user

none

### Example
```dart
import 'package:mobileid_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = MobileidApi().getNotificationApi();

try {
    final response = api.listNotifications();
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationApi->listNotifications: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationListResponse**](NotificationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putNotificationResponse**
> NotificationConfirmationResponse putNotificationResponse(notificationConfirmationRequest)

Responds to a notification

Confirms or denies the action contained in the notification

### Example
```dart
import 'package:mobileid_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = MobileidApi().getNotificationApi();
final NotificationConfirmationRequest notificationConfirmationRequest = ; // NotificationConfirmationRequest | 

try {
    final response = api.putNotificationResponse(notificationConfirmationRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationApi->putNotificationResponse: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationConfirmationRequest** | [**NotificationConfirmationRequest**](NotificationConfirmationRequest.md)|  | 

### Return type

[**NotificationConfirmationResponse**](NotificationConfirmationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

