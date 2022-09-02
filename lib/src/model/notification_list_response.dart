//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:mobileid_api/src/model/sign_in_notification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_list_response.g.dart';

/// NotificationListResponse
///
/// Properties:
/// * [notifications] 
abstract class NotificationListResponse implements Built<NotificationListResponse, NotificationListResponseBuilder> {
    @BuiltValueField(wireName: r'notifications')
    BuiltList<SignInNotification>? get notifications;

    NotificationListResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(NotificationListResponseBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, NotificationListResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.notifications != null) {
            result
                ..add(r'notifications')
                ..add(serializers.serialize(object.notifications,
                    specifiedType: const FullType(BuiltList, [FullType(SignInNotification)])));
        }
        return result;
    }

    @override
    NotificationListResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NotificationListResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'notifications':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(SignInNotification)])) as BuiltList<SignInNotification>;
                    result.notifications.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

