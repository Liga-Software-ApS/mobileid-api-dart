# mobileid_api (EXPERIMENTAL)
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v0
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

* Dart 2.12.0 or later OR Flutter 1.26.0 or later
* Dio 4.0.0+

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  mobileid_api: 0.1.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  mobileid_api:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  mobileid_api:
    path: /path/to/mobileid_api
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:mobileid_api/mobileid_api.dart';


final api = MobileidApi().getAuthenticationApi();
final AuthenticationRequest authenticationRequest = ; // AuthenticationRequest | 

try {
    final response = await api.authenticate(authenticationRequest);
    print(response);
} catch on DioError (e) {
    print("Exception when calling AuthenticationApi->authenticate: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://mobileid.ligasw.net:8443*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**authenticate**](doc/AuthenticationApi.md#authenticate) | **POST** /api/authentication/ | Start authentication flow for subject
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**check**](doc/AuthenticationApi.md#check) | **POST** /api/authentication/get | Checks if the authenticating app has published a response yet
[*NotificationApi*](doc/NotificationApi.md) | [**getNotification**](doc/NotificationApi.md#getnotification) | **POST** /api/notifications/get | Retrieves a notification
[*NotificationApi*](doc/NotificationApi.md) | [**listNotifications**](doc/NotificationApi.md#listnotifications) | **GET** /api/notifications/ | List all notifications for the user
[*NotificationApi*](doc/NotificationApi.md) | [**putNotificationResponse**](doc/NotificationApi.md#putnotificationresponse) | **PUT** /api/notifications/ | Responds to a notification
[*RegistrationApi*](doc/RegistrationApi.md) | [**completeRegister**](doc/RegistrationApi.md#completeregister) | **POST** /api/registration/complete | Completes registration with challenge
[*RegistrationApi*](doc/RegistrationApi.md) | [**startRegister**](doc/RegistrationApi.md#startregister) | **POST** /api/registration/ | Starts registration procedure


## Documentation For Models

 - [AbstractNotification](doc/AbstractNotification.md)
 - [AuthenticationRequest](doc/AuthenticationRequest.md)
 - [AuthenticationResponse](doc/AuthenticationResponse.md)
 - [CheckAuthenticationRequest](doc/CheckAuthenticationRequest.md)
 - [CheckAuthenticationResponse](doc/CheckAuthenticationResponse.md)
 - [CompleteRegistrationRequest](doc/CompleteRegistrationRequest.md)
 - [CompleteRegistrationResponse](doc/CompleteRegistrationResponse.md)
 - [NotificationConfirmationRequest](doc/NotificationConfirmationRequest.md)
 - [NotificationConfirmationResponse](doc/NotificationConfirmationResponse.md)
 - [NotificationListResponse](doc/NotificationListResponse.md)
 - [NotificationRetrievalRequest](doc/NotificationRetrievalRequest.md)
 - [SignInNotification](doc/SignInNotification.md)
 - [SignInNotificationAllOf](doc/SignInNotificationAllOf.md)
 - [StartRegistrationRequest](doc/StartRegistrationRequest.md)
 - [StartRegistrationResponse](doc/StartRegistrationResponse.md)


## Documentation For Authorization


## bearerAuth

- **Type**: HTTP basic authentication


## Author



