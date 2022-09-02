//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library mobileid_api.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:mobileid_api/serializers.dart';
import 'package:mobileid_api/auth/api_key_auth.dart';
import 'package:mobileid_api/auth/basic_auth.dart';
import 'package:mobileid_api/auth/oauth.dart';
import 'package:mobileid_api/api/authentication_api.dart';
import 'package:mobileid_api/api/notification_api.dart';
import 'package:mobileid_api/api/registration_api.dart';


final _defaultInterceptors = [
  OAuthInterceptor(),
  BasicAuthInterceptor(),
  ApiKeyAuthInterceptor(),
];

class MobileidApi {

    static const String basePath = r'https://mobileid.ligasw.net:8443';

    final Dio dio;

    final Serializers serializers;

    MobileidApi({
      Dio dio,
      Serializers serializers,
      String basePathOverride,
      List<Interceptor> interceptors,
    })  : this.serializers = serializers ?? standardSerializers,
          this.dio = dio ??
              Dio(BaseOptions(
                baseUrl: basePathOverride ?? basePath,
                connectTimeout: 5000,
                receiveTimeout: 3000,
              )) {
      if (interceptors == null) {
        this.dio.interceptors.addAll(_defaultInterceptors);
      } else {
        this.dio.interceptors.addAll(interceptors);
      }
    }

    void setOAuthToken(String name, String token) {
        (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor, orElse: null) as OAuthInterceptor)?.tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (this.dio.interceptors.firstWhere((element) => element is BasicAuthInterceptor, orElse: null) as BasicAuthInterceptor)?.authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor, orElse: null) as ApiKeyAuthInterceptor)?.apiKeys[name] = apiKey;
    }


    /**
    * Get AuthenticationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    AuthenticationApi getAuthenticationApi() {
    return AuthenticationApi(dio, serializers);
    }


    /**
    * Get NotificationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    NotificationApi getNotificationApi() {
    return NotificationApi(dio, serializers);
    }


    /**
    * Get RegistrationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    RegistrationApi getRegistrationApi() {
    return RegistrationApi(dio, serializers);
    }


}
