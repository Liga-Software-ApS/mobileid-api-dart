//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_confirmation_response.g.dart';

abstract class NotificationConfirmationResponse implements Built<NotificationConfirmationResponse, NotificationConfirmationResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    NotificationConfirmationResponse._();

    static void _initializeBuilder(NotificationConfirmationResponseBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, NotificationConfirmationResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    NotificationConfirmationResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NotificationConfirmationResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

