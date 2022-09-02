//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:mobileid_api/model/complete_registration_request.dart';
import 'package:mobileid_api/model/complete_registration_response.dart';
import 'package:mobileid_api/model/start_registration_request.dart';
import 'package:mobileid_api/model/start_registration_response.dart';

class RegistrationApi {

  final Dio _dio;

  final Serializers _serializers;

  const RegistrationApi(this._dio, this._serializers);

  /// Completes registration with challenge
  ///
  /// none
  Future<Response<CompleteRegistrationResponse>> completeRegister(
    CompleteRegistrationRequest completeRegistrationRequest, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/api/registration/complete',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(CompleteRegistrationRequest);
    _bodyData = _serializers.serialize(completeRegistrationRequest, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(CompleteRegistrationResponse);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as CompleteRegistrationResponse;

    return Response<CompleteRegistrationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Starts registration procedure
  ///
  /// none
  Future<Response<StartRegistrationResponse>> startRegister(
    StartRegistrationRequest startRegistrationRequest, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/api/registration/',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(StartRegistrationRequest);
    _bodyData = _serializers.serialize(startRegistrationRequest, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(StartRegistrationResponse);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as StartRegistrationResponse;

    return Response<StartRegistrationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
