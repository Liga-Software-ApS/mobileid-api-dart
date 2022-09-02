//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_registration_request.g.dart';

abstract class CompleteRegistrationRequest implements Built<CompleteRegistrationRequest, CompleteRegistrationRequestBuilder> {

    @BuiltValueField(wireName: r'challenge')
    Uint8List get challenge;

    @BuiltValueField(wireName: r'signedNonce')
    Uint8List get signedNonce;

    @nullable
    @BuiltValueField(wireName: r'firebaseToken')
    String get firebaseToken;

    CompleteRegistrationRequest._();

    static void _initializeBuilder(CompleteRegistrationRequestBuilder b) => b;

    factory CompleteRegistrationRequest([void updates(CompleteRegistrationRequestBuilder b)]) = _$CompleteRegistrationRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<CompleteRegistrationRequest> get serializer => _$CompleteRegistrationRequestSerializer();
}

class _$CompleteRegistrationRequestSerializer implements StructuredSerializer<CompleteRegistrationRequest> {

    @override
    final Iterable<Type> types = const [CompleteRegistrationRequest, _$CompleteRegistrationRequest];
    @override
    final String wireName = r'CompleteRegistrationRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, CompleteRegistrationRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'challenge')
            ..add(serializers.serialize(object.challenge,
                specifiedType: const FullType(Uint8List)));
        result
            ..add(r'signedNonce')
            ..add(serializers.serialize(object.signedNonce,
                specifiedType: const FullType(Uint8List)));
        if (object.firebaseToken != null) {
            result
                ..add(r'firebaseToken')
                ..add(serializers.serialize(object.firebaseToken,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CompleteRegistrationRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CompleteRegistrationRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'challenge':
                    result.challenge = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    break;
                case r'signedNonce':
                    result.signedNonce = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    break;
                case r'firebaseToken':
                    result.firebaseToken = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

