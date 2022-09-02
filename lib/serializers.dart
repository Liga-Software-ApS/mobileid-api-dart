//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:mobileid_api/model/abstract_notification.dart';
import 'package:mobileid_api/model/authentication_request.dart';
import 'package:mobileid_api/model/authentication_response.dart';
import 'package:mobileid_api/model/check_authentication_request.dart';
import 'package:mobileid_api/model/check_authentication_response.dart';
import 'package:mobileid_api/model/complete_registration_request.dart';
import 'package:mobileid_api/model/complete_registration_response.dart';
import 'package:mobileid_api/model/notification_confirmation_request.dart';
import 'package:mobileid_api/model/notification_confirmation_response.dart';
import 'package:mobileid_api/model/notification_list_response.dart';
import 'package:mobileid_api/model/notification_retrieval_request.dart';
import 'package:mobileid_api/model/sign_in_notification.dart';
import 'package:mobileid_api/model/sign_in_notification_all_of.dart';
import 'package:mobileid_api/model/start_registration_request.dart';
import 'package:mobileid_api/model/start_registration_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AbstractNotification,
  AuthenticationRequest,
  AuthenticationResponse,
  CheckAuthenticationRequest,
  CheckAuthenticationResponse,
  CompleteRegistrationRequest,
  CompleteRegistrationResponse,
  NotificationConfirmationRequest,
  NotificationConfirmationResponse,
  NotificationListResponse,
  NotificationRetrievalRequest,
  SignInNotification,
  SignInNotificationAllOf,
  StartRegistrationRequest,
  StartRegistrationResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
