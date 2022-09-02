//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_confirmation_request.g.dart';

/// NotificationConfirmationRequest
///
/// Properties:
/// * [id] 
/// * [signedPayload] 
abstract class NotificationConfirmationRequest implements Built<NotificationConfirmationRequest, NotificationConfirmationRequestBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'signedPayload')
    Uint8List get signedPayload;

    NotificationConfirmationRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(NotificationConfirmationRequestBuilder b) => b;

    factory NotificationConfirmationRequest([void updates(NotificationConfirmationRequestBuilder b)]) = _$NotificationConfirmationRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<NotificationConfirmationRequest> get serializer => _$NotificationConfirmationRequestSerializer();
}

class _$NotificationConfirmationRequestSerializer implements StructuredSerializer<NotificationConfirmationRequest> {
    @override
    final Iterable<Type> types = const [NotificationConfirmationRequest, _$NotificationConfirmationRequest];

    @override
    final String wireName = r'NotificationConfirmationRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, NotificationConfirmationRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'signedPayload')
            ..add(serializers.serialize(object.signedPayload,
                specifiedType: const FullType(Uint8List)));
        return result;
    }

    @override
    NotificationConfirmationRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NotificationConfirmationRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'signedPayload':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.signedPayload = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

