//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:mobileid_api/model/sign_in_notification_all_of.dart';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:mobileid_api/model/abstract_notification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_in_notification.g.dart';

abstract class SignInNotification implements Built<SignInNotification, SignInNotificationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'subject')
    String get subject;

    @nullable
    @BuiltValueField(wireName: r'createdAt')
    DateTime get createdAt;

    @BuiltValueField(wireName: r'payload')
    Uint8List get payload;

    @nullable
    @BuiltValueField(wireName: r'type')
    SignInNotificationTypeEnum get type;
    // enum typeEnum {  SIGNIN,  };

    @nullable
    @BuiltValueField(wireName: r'authenticationId')
    String get authenticationId;

    SignInNotification._();

    static void _initializeBuilder(SignInNotificationBuilder b) => b;

    factory SignInNotification([void updates(SignInNotificationBuilder b)]) = _$SignInNotification;

    @BuiltValueSerializer(custom: true)
    static Serializer<SignInNotification> get serializer => _$SignInNotificationSerializer();
}

class _$SignInNotificationSerializer implements StructuredSerializer<SignInNotification> {

    @override
    final Iterable<Type> types = const [SignInNotification, _$SignInNotification];
    @override
    final String wireName = r'SignInNotification';

    @override
    Iterable<Object> serialize(Serializers serializers, SignInNotification object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.subject != null) {
            result
                ..add(r'subject')
                ..add(serializers.serialize(object.subject,
                    specifiedType: const FullType(String)));
        }
        if (object.createdAt != null) {
            result
                ..add(r'createdAt')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(DateTime)));
        }
        result
            ..add(r'payload')
            ..add(serializers.serialize(object.payload,
                specifiedType: const FullType(Uint8List)));
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(SignInNotificationTypeEnum)));
        }
        if (object.authenticationId != null) {
            result
                ..add(r'authenticationId')
                ..add(serializers.serialize(object.authenticationId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    SignInNotification deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SignInNotificationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'subject':
                    result.subject = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'createdAt':
                    result.createdAt = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'payload':
                    result.payload = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    break;
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(SignInNotificationTypeEnum)) as SignInNotificationTypeEnum;
                    break;
                case r'authenticationId':
                    result.authenticationId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

class SignInNotificationTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SIGNIN')
  static const SignInNotificationTypeEnum SIGNIN = _$signInNotificationTypeEnum_SIGNIN;

  static Serializer<SignInNotificationTypeEnum> get serializer => _$signInNotificationTypeEnumSerializer;

  const SignInNotificationTypeEnum._(String name): super(name);

  static BuiltSet<SignInNotificationTypeEnum> get values => _$signInNotificationTypeEnumValues;
  static SignInNotificationTypeEnum valueOf(String name) => _$signInNotificationTypeEnumValueOf(name);
}

