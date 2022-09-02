//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'abstract_notification.g.dart';

/// AbstractNotification
///
/// Properties:
/// * [id] 
/// * [subject] 
/// * [createdAt] 
/// * [payload] 
/// * [type] 
abstract class AbstractNotification implements Built<AbstractNotification, AbstractNotificationBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'subject')
    String? get subject;

    @BuiltValueField(wireName: r'createdAt')
    DateTime? get createdAt;

    @BuiltValueField(wireName: r'payload')
    Uint8List get payload;

    @BuiltValueField(wireName: r'type')
    AbstractNotificationTypeEnum? get type;
    // enum typeEnum {  SIGNIN,  };

    AbstractNotification._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AbstractNotificationBuilder b) => b;

    factory AbstractNotification([void updates(AbstractNotificationBuilder b)]) = _$AbstractNotification;

    @BuiltValueSerializer(custom: true)
    static Serializer<AbstractNotification> get serializer => _$AbstractNotificationSerializer();
}

class _$AbstractNotificationSerializer implements StructuredSerializer<AbstractNotification> {
    @override
    final Iterable<Type> types = const [AbstractNotification, _$AbstractNotification];

    @override
    final String wireName = r'AbstractNotification';

    @override
    Iterable<Object?> serialize(Serializers serializers, AbstractNotification object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.subject != null) {
            result
                ..add(r'subject')
                ..add(serializers.serialize(object.subject,
                    specifiedType: const FullType(String)));
        }
        if (object.createdAt != null) {
            result
                ..add(r'createdAt')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(DateTime)));
        }
        result
            ..add(r'payload')
            ..add(serializers.serialize(object.payload,
                specifiedType: const FullType(Uint8List)));
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(AbstractNotificationTypeEnum)));
        }
        return result;
    }

    @override
    AbstractNotification deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AbstractNotificationBuilder();

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
                case r'subject':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.subject = valueDes;
                    break;
                case r'createdAt':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.createdAt = valueDes;
                    break;
                case r'payload':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.payload = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AbstractNotificationTypeEnum)) as AbstractNotificationTypeEnum;
                    result.type = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

class AbstractNotificationTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SIGNIN')
  static const AbstractNotificationTypeEnum SIGNIN = _$abstractNotificationTypeEnum_SIGNIN;

  static Serializer<AbstractNotificationTypeEnum> get serializer => _$abstractNotificationTypeEnumSerializer;

  const AbstractNotificationTypeEnum._(String name): super(name);

  static BuiltSet<AbstractNotificationTypeEnum> get values => _$abstractNotificationTypeEnumValues;
  static AbstractNotificationTypeEnum valueOf(String name) => _$abstractNotificationTypeEnumValueOf(name);
}

