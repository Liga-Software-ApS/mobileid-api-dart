//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'abstract_notification.g.dart';

abstract class AbstractNotification implements Built<AbstractNotification, AbstractNotificationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'subject')
    String get subject;

    @nullable
    @BuiltValueField(wireName: r'createdAt')
    DateTime get createdAt;

    @BuiltValueField(wireName: r'payload')
    Uint8List get payload;

    @nullable
    @BuiltValueField(wireName: r'type')
    AbstractNotificationTypeEnum get type;
    // enum typeEnum {  SIGNIN,  };

    AbstractNotification._();

    static void _initializeBuilder(AbstractNotificationBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, AbstractNotification object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    AbstractNotification deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AbstractNotificationBuilder();

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
                case r'subject':
                    result.subject = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'createdAt':
                    result.createdAt = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'payload':
                    result.payload = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    break;
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(AbstractNotificationTypeEnum)) as AbstractNotificationTypeEnum;
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

