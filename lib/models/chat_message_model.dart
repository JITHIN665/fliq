import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @JsonKey(name: 'chat_thread_id') int? chatThreadId,
    @JsonKey(name: 'chat_message_type_id') int? chatMessageTypeId,
    @JsonKey(name: 'sender_id') int? senderId,
    @JsonKey(name: 'receiver_id') int? receiverId,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'is_one_time_view') bool? isOneTimeView,
    @JsonKey(name: 'is_on_vanish_mode') bool? isOnVanishMode,
    @JsonKey(name: 'sent_at') String? sentAt,
    @JsonKey(name: 'delivered_at') String? deliveredAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, Object?> json) =>
      _$ChatMessageFromJson(json);
}
