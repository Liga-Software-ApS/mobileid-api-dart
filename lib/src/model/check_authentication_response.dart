//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_authentication_response.g.dart';

/// CheckAuthenticationResponse
///
/// Properties:
/// * [payload] 
abstract class CheckAuthenticationResponse implements Built<CheckAuthenticationResponse, CheckAuthenticationResponseBuilder> {
    @BuiltValueField(wireName: r'payload')
    String? get payload;

    CheckAuthenticationResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CheckAuthenticationResponseBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, CheckAuthenticationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.payload != null) {
            result
                ..add(r'payload')
                ..add(serializers.serialize(object.payload,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CheckAuthenticationResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CheckAuthenticationResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'payload':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.payload = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

