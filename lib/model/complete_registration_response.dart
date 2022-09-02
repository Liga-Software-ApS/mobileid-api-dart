//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_registration_response.g.dart';

abstract class CompleteRegistrationResponse implements Built<CompleteRegistrationResponse, CompleteRegistrationResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'idToken')
    String get idToken;

    CompleteRegistrationResponse._();

    static void _initializeBuilder(CompleteRegistrationResponseBuilder b) => b;

    factory CompleteRegistrationResponse([void updates(CompleteRegistrationResponseBuilder b)]) = _$CompleteRegistrationResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<CompleteRegistrationResponse> get serializer => _$CompleteRegistrationResponseSerializer();
}

class _$CompleteRegistrationResponseSerializer implements StructuredSerializer<CompleteRegistrationResponse> {

    @override
    final Iterable<Type> types = const [CompleteRegistrationResponse, _$CompleteRegistrationResponse];
    @override
    final String wireName = r'CompleteRegistrationResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, CompleteRegistrationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.idToken != null) {
            result
                ..add(r'idToken')
                ..add(serializers.serialize(object.idToken,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CompleteRegistrationResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CompleteRegistrationResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'idToken':
                    result.idToken = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

