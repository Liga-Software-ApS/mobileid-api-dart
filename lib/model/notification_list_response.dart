//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:mobileid_api/model/sign_in_notification.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_list_response.g.dart';

abstract class NotificationListResponse implements Built<NotificationListResponse, NotificationListResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'notifications')
    BuiltList<SignInNotification> get notifications;

    NotificationListResponse._();

    static void _initializeBuilder(NotificationListResponseBuilder b) => b;

    factory NotificationListResponse([void updates(NotificationListResponseBuilder b)]) = _$NotificationListResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<NotificationListResponse> get serializer => _$NotificationListResponseSerializer();
}

class _$NotificationListResponseSerializer implements StructuredSerializer<NotificationListResponse> {

    @override
    final Iterable<Type> types = const [NotificationListResponse, _$NotificationListResponse];
    @override
    final String wireName = r'NotificationListResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, NotificationListResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.notifications != null) {
            result
                ..add(r'notifications')
                ..add(serializers.serialize(object.notifications,
                    specifiedType: const FullType(BuiltList, [FullType(SignInNotification)])));
        }
        return result;
    }

    @override
    NotificationListResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NotificationListResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'notifications':
                    result.notifications.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(SignInNotification)])) as BuiltList<SignInNotification>);
                    break;
            }
        }
        return result.build();
    }
}

