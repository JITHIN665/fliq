// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  @JsonKey(name: 'chat_thread_id')
  int? get chatThreadId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_message_type_id')
  int? get chatMessageTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_id')
  int? get receiverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_one_time_view')
  bool? get isOneTimeView => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_on_vanish_mode')
  bool? get isOnVanishMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_at')
  String? get sentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivered_at')
  String? get deliveredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_thread_id') int? chatThreadId,
      @JsonKey(name: 'chat_message_type_id') int? chatMessageTypeId,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'receiver_id') int? receiverId,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'is_one_time_view') bool? isOneTimeView,
      @JsonKey(name: 'is_on_vanish_mode') bool? isOnVanishMode,
      @JsonKey(name: 'sent_at') String? sentAt,
      @JsonKey(name: 'delivered_at') String? deliveredAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatThreadId = freezed,
    Object? chatMessageTypeId = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? message = freezed,
    Object? isOneTimeView = freezed,
    Object? isOnVanishMode = freezed,
    Object? sentAt = freezed,
    Object? deliveredAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      chatThreadId: freezed == chatThreadId
          ? _value.chatThreadId
          : chatThreadId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatMessageTypeId: freezed == chatMessageTypeId
          ? _value.chatMessageTypeId
          : chatMessageTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isOneTimeView: freezed == isOneTimeView
          ? _value.isOneTimeView
          : isOneTimeView // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOnVanishMode: freezed == isOnVanishMode
          ? _value.isOnVanishMode
          : isOnVanishMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_thread_id') int? chatThreadId,
      @JsonKey(name: 'chat_message_type_id') int? chatMessageTypeId,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'receiver_id') int? receiverId,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'is_one_time_view') bool? isOneTimeView,
      @JsonKey(name: 'is_on_vanish_mode') bool? isOnVanishMode,
      @JsonKey(name: 'sent_at') String? sentAt,
      @JsonKey(name: 'delivered_at') String? deliveredAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatThreadId = freezed,
    Object? chatMessageTypeId = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? message = freezed,
    Object? isOneTimeView = freezed,
    Object? isOnVanishMode = freezed,
    Object? sentAt = freezed,
    Object? deliveredAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ChatMessageImpl(
      chatThreadId: freezed == chatThreadId
          ? _value.chatThreadId
          : chatThreadId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatMessageTypeId: freezed == chatMessageTypeId
          ? _value.chatMessageTypeId
          : chatMessageTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isOneTimeView: freezed == isOneTimeView
          ? _value.isOneTimeView
          : isOneTimeView // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOnVanishMode: freezed == isOnVanishMode
          ? _value.isOnVanishMode
          : isOnVanishMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl with DiagnosticableTreeMixin implements _ChatMessage {
  const _$ChatMessageImpl(
      {@JsonKey(name: 'chat_thread_id') this.chatThreadId,
      @JsonKey(name: 'chat_message_type_id') this.chatMessageTypeId,
      @JsonKey(name: 'sender_id') this.senderId,
      @JsonKey(name: 'receiver_id') this.receiverId,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'is_one_time_view') this.isOneTimeView,
      @JsonKey(name: 'is_on_vanish_mode') this.isOnVanishMode,
      @JsonKey(name: 'sent_at') this.sentAt,
      @JsonKey(name: 'delivered_at') this.deliveredAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  @JsonKey(name: 'chat_thread_id')
  final int? chatThreadId;
  @override
  @JsonKey(name: 'chat_message_type_id')
  final int? chatMessageTypeId;
  @override
  @JsonKey(name: 'sender_id')
  final int? senderId;
  @override
  @JsonKey(name: 'receiver_id')
  final int? receiverId;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'is_one_time_view')
  final bool? isOneTimeView;
  @override
  @JsonKey(name: 'is_on_vanish_mode')
  final bool? isOnVanishMode;
  @override
  @JsonKey(name: 'sent_at')
  final String? sentAt;
  @override
  @JsonKey(name: 'delivered_at')
  final String? deliveredAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessage(chatThreadId: $chatThreadId, chatMessageTypeId: $chatMessageTypeId, senderId: $senderId, receiverId: $receiverId, message: $message, isOneTimeView: $isOneTimeView, isOnVanishMode: $isOnVanishMode, sentAt: $sentAt, deliveredAt: $deliveredAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessage'))
      ..add(DiagnosticsProperty('chatThreadId', chatThreadId))
      ..add(DiagnosticsProperty('chatMessageTypeId', chatMessageTypeId))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('receiverId', receiverId))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('isOneTimeView', isOneTimeView))
      ..add(DiagnosticsProperty('isOnVanishMode', isOnVanishMode))
      ..add(DiagnosticsProperty('sentAt', sentAt))
      ..add(DiagnosticsProperty('deliveredAt', deliveredAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.chatThreadId, chatThreadId) ||
                other.chatThreadId == chatThreadId) &&
            (identical(other.chatMessageTypeId, chatMessageTypeId) ||
                other.chatMessageTypeId == chatMessageTypeId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isOneTimeView, isOneTimeView) ||
                other.isOneTimeView == isOneTimeView) &&
            (identical(other.isOnVanishMode, isOnVanishMode) ||
                other.isOnVanishMode == isOnVanishMode) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatThreadId,
      chatMessageTypeId,
      senderId,
      receiverId,
      message,
      isOneTimeView,
      isOnVanishMode,
      sentAt,
      deliveredAt,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
          {@JsonKey(name: 'chat_thread_id') final int? chatThreadId,
          @JsonKey(name: 'chat_message_type_id') final int? chatMessageTypeId,
          @JsonKey(name: 'sender_id') final int? senderId,
          @JsonKey(name: 'receiver_id') final int? receiverId,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'is_one_time_view') final bool? isOneTimeView,
          @JsonKey(name: 'is_on_vanish_mode') final bool? isOnVanishMode,
          @JsonKey(name: 'sent_at') final String? sentAt,
          @JsonKey(name: 'delivered_at') final String? deliveredAt,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  @JsonKey(name: 'chat_thread_id')
  int? get chatThreadId;
  @override
  @JsonKey(name: 'chat_message_type_id')
  int? get chatMessageTypeId;
  @override
  @JsonKey(name: 'sender_id')
  int? get senderId;
  @override
  @JsonKey(name: 'receiver_id')
  int? get receiverId;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'is_one_time_view')
  bool? get isOneTimeView;
  @override
  @JsonKey(name: 'is_on_vanish_mode')
  bool? get isOnVanishMode;
  @override
  @JsonKey(name: 'sent_at')
  String? get sentAt;
  @override
  @JsonKey(name: 'delivered_at')
  String? get deliveredAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
