//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:mobileid_api/src/model/sign_in_notification_all_of.dart';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:mobileid_api/src/model/abstract_notification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_in_notification.g.dart';

// ignore_for_file: unused_import

/// SignInNotification
///
/// Properties:
/// * [id] 
/// * [subject] 
/// * [createdAt] 
/// * [payload] 
/// * [type] 
/// * [authenticationId] 
abstract class SignInNotification implements Built<SignInNotification, SignInNotificationBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'subject')
    String? get subject;

    @BuiltValueField(wireName: r'createdAt')
    DateTime? get createdAt;

    @BuiltValueField(wireName: r'payload')
    Uint8List get payload;

    @BuiltValueField(wireName: r'type')
    SignInNotificationTypeEnum? get type;
    // enum typeEnum {  SIGNIN,  };

    @BuiltValueField(wireName: r'authenticationId')
    String? get authenticationId;

    SignInNotification._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SignInNotificationBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, SignInNotification object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    SignInNotification deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SignInNotificationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'subject':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.subject = valueDes;
                    break;
                case r'createdAt':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.createdAt = valueDes;
                    break;
                case r'payload':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.payload = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(SignInNotificationTypeEnum)) as SignInNotificationTypeEnum;
                    result.type = valueDes;
                    break;
                case r'authenticationId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.authenticationId = valueDes;
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

