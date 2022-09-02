//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_response.g.dart';

abstract class AuthenticationResponse implements Built<AuthenticationResponse, AuthenticationResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'authenticationSessionId')
    String get authenticationSessionId;

    AuthenticationResponse._();

    static void _initializeBuilder(AuthenticationResponseBuilder b) => b;

    factory AuthenticationResponse([void updates(AuthenticationResponseBuilder b)]) = _$AuthenticationResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<AuthenticationResponse> get serializer => _$AuthenticationResponseSerializer();
}

class _$AuthenticationResponseSerializer implements StructuredSerializer<AuthenticationResponse> {

    @override
    final Iterable<Type> types = const [AuthenticationResponse, _$AuthenticationResponse];
    @override
    final String wireName = r'AuthenticationResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, AuthenticationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.authenticationSessionId != null) {
            result
                ..add(r'authenticationSessionId')
                ..add(serializers.serialize(object.authenticationSessionId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AuthenticationResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AuthenticationResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'authenticationSessionId':
                    result.authenticationSessionId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

