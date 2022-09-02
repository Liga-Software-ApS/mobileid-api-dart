//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_registration_request.g.dart';

abstract class StartRegistrationRequest implements Built<StartRegistrationRequest, StartRegistrationRequestBuilder> {

    @BuiltValueField(wireName: r'certificate')
    Uint8List get certificate;

    @BuiltValueField(wireName: r'signature')
    Uint8List get signature;

    StartRegistrationRequest._();

    static void _initializeBuilder(StartRegistrationRequestBuilder b) => b;

    factory StartRegistrationRequest([void updates(StartRegistrationRequestBuilder b)]) = _$StartRegistrationRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<StartRegistrationRequest> get serializer => _$StartRegistrationRequestSerializer();
}

class _$StartRegistrationRequestSerializer implements StructuredSerializer<StartRegistrationRequest> {

    @override
    final Iterable<Type> types = const [StartRegistrationRequest, _$StartRegistrationRequest];
    @override
    final String wireName = r'StartRegistrationRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, StartRegistrationRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'certificate')
            ..add(serializers.serialize(object.certificate,
                specifiedType: const FullType(Uint8List)));
        result
            ..add(r'signature')
            ..add(serializers.serialize(object.signature,
                specifiedType: const FullType(Uint8List)));
        return result;
    }

    @override
    StartRegistrationRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StartRegistrationRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'certificate':
                    result.certificate = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    break;
                case r'signature':
                    result.signature = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    break;
            }
        }
        return result.build();
    }
}

