// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: json['id'] as String,
      sender_id: (json['sender_id'] as num).toInt(),
      receiver_id: (json['receiver_id'] as num).toInt(),
      message: json['message'] as String,
      sentAt: json['sent_at'] as String?,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.sender_id,
      'receiver_id': instance.receiver_id,
      'message': instance.message,
      'sent_at': instance.sentAt,
    };
