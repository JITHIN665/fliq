// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      chatThreadId: (json['chat_thread_id'] as num?)?.toInt(),
      chatMessageTypeId: (json['chat_message_type_id'] as num?)?.toInt(),
      senderId: (json['sender_id'] as num?)?.toInt(),
      receiverId: (json['receiver_id'] as num?)?.toInt(),
      message: json['message'] as String?,
      isOneTimeView: json['is_one_time_view'] as bool?,
      isOnVanishMode: json['is_on_vanish_mode'] as bool?,
      sentAt: json['sent_at'] as String?,
      deliveredAt: json['delivered_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'chat_thread_id': instance.chatThreadId,
      'chat_message_type_id': instance.chatMessageTypeId,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'message': instance.message,
      'is_one_time_view': instance.isOneTimeView,
      'is_on_vanish_mode': instance.isOnVanishMode,
      'sent_at': instance.sentAt,
      'delivered_at': instance.deliveredAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
