//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_authentication_response.g.dart';

abstract class CheckAuthenticationResponse implements Built<CheckAuthenticationResponse, CheckAuthenticationResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'payload')
    String get payload;

    CheckAuthenticationResponse._();

    static void _initializeBuilder(CheckAuthenticationResponseBuilder b) => b;

    factory CheckAuthenticationResponse([void updates(CheckAuthenticationResponseBuilder b)]) = _$CheckAuthenticationResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<CheckAuthenticationResponse> get serializer => _$CheckAuthenticationResponseSerializer();
}

class _$CheckAuthenticationResponseSerializer implements StructuredSerializer<CheckAuthenticationResponse> {

    @override
    final Iterable<Type> types = const [CheckAuthenticationResponse, _$CheckAuthenticationResponse];
    @override
    final String wireName = r'CheckAuthenticationResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, CheckAuthenticationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.payload != null) {
            result
                ..add(r'payload')
                ..add(serializers.serialize(object.payload,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CheckAuthenticationResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CheckAuthenticationResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'payload':
                    result.payload = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

