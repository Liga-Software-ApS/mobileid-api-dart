//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_registration_response.g.dart';

/// CompleteRegistrationResponse
///
/// Properties:
/// * [idToken] 
abstract class CompleteRegistrationResponse implements Built<CompleteRegistrationResponse, CompleteRegistrationResponseBuilder> {
    @BuiltValueField(wireName: r'idToken')
    String? get idToken;

    CompleteRegistrationResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CompleteRegistrationResponseBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, CompleteRegistrationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.idToken != null) {
            result
                ..add(r'idToken')
                ..add(serializers.serialize(object.idToken,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CompleteRegistrationResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CompleteRegistrationResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'idToken':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.idToken = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

