//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_authentication_request.g.dart';

abstract class CheckAuthenticationRequest implements Built<CheckAuthenticationRequest, CheckAuthenticationRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'authenticationSessionId')
    String get authenticationSessionId;

    CheckAuthenticationRequest._();

    static void _initializeBuilder(CheckAuthenticationRequestBuilder b) => b;

    factory CheckAuthenticationRequest([void updates(CheckAuthenticationRequestBuilder b)]) = _$CheckAuthenticationRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<CheckAuthenticationRequest> get serializer => _$CheckAuthenticationRequestSerializer();
}

class _$CheckAuthenticationRequestSerializer implements StructuredSerializer<CheckAuthenticationRequest> {

    @override
    final Iterable<Type> types = const [CheckAuthenticationRequest, _$CheckAuthenticationRequest];
    @override
    final String wireName = r'CheckAuthenticationRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, CheckAuthenticationRequest object,
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
    CheckAuthenticationRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CheckAuthenticationRequestBuilder();

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

