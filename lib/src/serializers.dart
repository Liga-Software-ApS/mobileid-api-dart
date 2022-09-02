//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:mobileid_api/src/date_serializer.dart';
import 'package:mobileid_api/src/model/date.dart';

import 'package:mobileid_api/src/model/abstract_notification.dart';
import 'package:mobileid_api/src/model/authentication_request.dart';
import 'package:mobileid_api/src/model/authentication_response.dart';
import 'package:mobileid_api/src/model/check_authentication_request.dart';
import 'package:mobileid_api/src/model/check_authentication_response.dart';
import 'package:mobileid_api/src/model/complete_registration_request.dart';
import 'package:mobileid_api/src/model/complete_registration_response.dart';
import 'package:mobileid_api/src/model/notification_confirmation_request.dart';
import 'package:mobileid_api/src/model/notification_confirmation_response.dart';
import 'package:mobileid_api/src/model/notification_list_response.dart';
import 'package:mobileid_api/src/model/notification_retrieval_request.dart';
import 'package:mobileid_api/src/model/sign_in_notification.dart';
import 'package:mobileid_api/src/model/sign_in_notification_all_of.dart';
import 'package:mobileid_api/src/model/start_registration_request.dart';
import 'package:mobileid_api/src/model/start_registration_response.dart';

part 'serializers.g.dart';

@SerializersFor([
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
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
