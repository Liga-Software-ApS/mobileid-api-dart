//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_retrieval_request.g.dart';

abstract class NotificationRetrievalRequest implements Built<NotificationRetrievalRequest, NotificationRetrievalRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    NotificationRetrievalRequest._();

    static void _initializeBuilder(NotificationRetrievalRequestBuilder b) => b;

    factory NotificationRetrievalRequest([void updates(NotificationRetrievalRequestBuilder b)]) = _$NotificationRetrievalRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<NotificationRetrievalRequest> get serializer => _$NotificationRetrievalRequestSerializer();
}

class _$NotificationRetrievalRequestSerializer implements StructuredSerializer<NotificationRetrievalRequest> {

    @override
    final Iterable<Type> types = const [NotificationRetrievalRequest, _$NotificationRetrievalRequest];
    @override
    final String wireName = r'NotificationRetrievalRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, NotificationRetrievalRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    NotificationRetrievalRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NotificationRetrievalRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

