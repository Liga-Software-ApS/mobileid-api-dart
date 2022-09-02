# mobileid_api.api.RegistrationApi

## Load the API package
```dart
import 'package:mobileid_api/api.dart';
```

All URIs are relative to *https://mobileid.ligasw.net:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completeRegister**](RegistrationApi.md#completeregister) | **POST** /api/registration/complete | Completes registration with challenge
[**startRegister**](RegistrationApi.md#startregister) | **POST** /api/registration/ | Starts registration procedure


# **completeRegister**
> CompleteRegistrationResponse completeRegister(completeRegistrationRequest)

Completes registration with challenge

none

### Example
```dart
import 'package:mobileid_api/api.dart';

final api = MobileidApi().getRegistrationApi();
final CompleteRegistrationRequest completeRegistrationRequest = ; // CompleteRegistrationRequest | 

try {
    final response = api.completeRegister(completeRegistrationRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RegistrationApi->completeRegister: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **completeRegistrationRequest** | [**CompleteRegistrationRequest**](CompleteRegistrationRequest.md)|  | 

### Return type

[**CompleteRegistrationResponse**](CompleteRegistrationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startRegister**
> StartRegistrationResponse startRegister(startRegistrationRequest)

Starts registration procedure

none

### Example
```dart
import 'package:mobileid_api/api.dart';

final api = MobileidApi().getRegistrationApi();
final StartRegistrationRequest startRegistrationRequest = ; // StartRegistrationRequest | 

try {
    final response = api.startRegister(startRegistrationRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RegistrationApi->startRegister: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startRegistrationRequest** | [**StartRegistrationRequest**](StartRegistrationRequest.md)|  | 

### Return type

[**StartRegistrationResponse**](StartRegistrationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

