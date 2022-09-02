//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_registration_response.g.dart';

abstract class StartRegistrationResponse implements Built<StartRegistrationResponse, StartRegistrationResponseBuilder> {

    @BuiltValueField(wireName: r'challenge')
    Uint8List get challenge;

    StartRegistrationResponse._();

    static void _initializeBuilder(StartRegistrationResponseBuilder b) => b;

    factory StartRegistrationResponse([void updates(StartRegistrationResponseBuilder b)]) = _$StartRegistrationResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<StartRegistrationResponse> get serializer => _$StartRegistrationResponseSerializer();
}

class _$StartRegistrationResponseSerializer implements StructuredSerializer<StartRegistrationResponse> {

    @override
    final Iterable<Type> types = const [StartRegistrationResponse, _$StartRegistrationResponse];
    @override
    final String wireName = r'StartRegistrationResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, StartRegistrationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'challenge')
            ..add(serializers.serialize(object.challenge,
                specifiedType: const FullType(Uint8List)));
        return result;
    }

    @override
    StartRegistrationResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StartRegistrationResponseBuilder();

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
            }
        }
        return result.build();
    }
}

