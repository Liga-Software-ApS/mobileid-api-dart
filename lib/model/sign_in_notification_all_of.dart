//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_in_notification_all_of.g.dart';

abstract class SignInNotificationAllOf implements Built<SignInNotificationAllOf, SignInNotificationAllOfBuilder> {

    @nullable
    @BuiltValueField(wireName: r'authenticationId')
    String get authenticationId;

    SignInNotificationAllOf._();

    static void _initializeBuilder(SignInNotificationAllOfBuilder b) => b;

    factory SignInNotificationAllOf([void updates(SignInNotificationAllOfBuilder b)]) = _$SignInNotificationAllOf;

    @BuiltValueSerializer(custom: true)
    static Serializer<SignInNotificationAllOf> get serializer => _$SignInNotificationAllOfSerializer();
}

class _$SignInNotificationAllOfSerializer implements StructuredSerializer<SignInNotificationAllOf> {

    @override
    final Iterable<Type> types = const [SignInNotificationAllOf, _$SignInNotificationAllOf];
    @override
    final String wireName = r'SignInNotificationAllOf';

    @override
    Iterable<Object> serialize(Serializers serializers, SignInNotificationAllOf object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.authenticationId != null) {
            result
                ..add(r'authenticationId')
                ..add(serializers.serialize(object.authenticationId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    SignInNotificationAllOf deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SignInNotificationAllOfBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'authenticationId':
                    result.authenticationId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

