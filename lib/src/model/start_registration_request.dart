//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_registration_request.g.dart';

/// StartRegistrationRequest
///
/// Properties:
/// * [certificate] 
/// * [timestamp] 
/// * [signature] 
abstract class StartRegistrationRequest implements Built<StartRegistrationRequest, StartRegistrationRequestBuilder> {
    @BuiltValueField(wireName: r'certificate')
    Uint8List get certificate;

    @BuiltValueField(wireName: r'timestamp')
    int get timestamp;

    @BuiltValueField(wireName: r'signature')
    Uint8List get signature;

    StartRegistrationRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(StartRegistrationRequestBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, StartRegistrationRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'certificate')
            ..add(serializers.serialize(object.certificate,
                specifiedType: const FullType(Uint8List)));
        result
            ..add(r'timestamp')
            ..add(serializers.serialize(object.timestamp,
                specifiedType: const FullType(int)));
        result
            ..add(r'signature')
            ..add(serializers.serialize(object.signature,
                specifiedType: const FullType(Uint8List)));
        return result;
    }

    @override
    StartRegistrationRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StartRegistrationRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'certificate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.certificate = valueDes;
                    break;
                case r'timestamp':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.timestamp = valueDes;
                    break;
                case r'signature':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.signature = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

