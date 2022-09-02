//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_request.g.dart';

/// AuthenticationRequest
///
/// Properties:
/// * [subject] 
abstract class AuthenticationRequest implements Built<AuthenticationRequest, AuthenticationRequestBuilder> {
    @BuiltValueField(wireName: r'subject')
    String? get subject;

    AuthenticationRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AuthenticationRequestBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, AuthenticationRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.subject != null) {
            result
                ..add(r'subject')
                ..add(serializers.serialize(object.subject,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AuthenticationRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AuthenticationRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'subject':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.subject = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

