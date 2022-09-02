//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_request.g.dart';

abstract class AuthenticationRequest implements Built<AuthenticationRequest, AuthenticationRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'subject')
    String get subject;

    AuthenticationRequest._();

    static void _initializeBuilder(AuthenticationRequestBuilder b) => b;

    factory AuthenticationRequest([void updates(AuthenticationRequestBuilder b)]) = _$AuthenticationRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<AuthenticationRequest> get serializer => _$AuthenticationRequestSerializer();
}

class _$AuthenticationRequestSerializer implements StructuredSerializer<AuthenticationRequest> {

    @override
    final Iterable<Type> types = const [AuthenticationRequest, _$AuthenticationRequest];
    @override
    final String wireName = r'AuthenticationRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, AuthenticationRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.subject != null) {
            result
                ..add(r'subject')
                ..add(serializers.serialize(object.subject,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AuthenticationRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AuthenticationRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'subject':
                    result.subject = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

