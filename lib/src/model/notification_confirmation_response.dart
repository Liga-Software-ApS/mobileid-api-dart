//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_confirmation_response.g.dart';

/// NotificationConfirmationResponse
///
/// Properties:
/// * [status] 
abstract class NotificationConfirmationResponse implements Built<NotificationConfirmationResponse, NotificationConfirmationResponseBuilder> {
    @BuiltValueField(wireName: r'status')
    String? get status;

    NotificationConfirmationResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(NotificationConfirmationResponseBuilder b) => b;

    factory NotificationConfirmationResponse([void updates(NotificationConfirmationResponseBuilder b)]) = _$NotificationConfirmationResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<NotificationConfirmationResponse> get serializer => _$NotificationConfirmationResponseSerializer();
}

class _$NotificationConfirmationResponseSerializer implements StructuredSerializer<NotificationConfirmationResponse> {
    @override
    final Iterable<Type> types = const [NotificationConfirmationResponse, _$NotificationConfirmationResponse];

    @override
    final String wireName = r'NotificationConfirmationResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, NotificationConfirmationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    NotificationConfirmationResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NotificationConfirmationResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

