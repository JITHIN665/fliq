import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';
import '../models/chat_message_model.dart';
import '../services/chat_service.dart';

final chatServiceProvider = Provider<ChatService>((ref) => ChatService());

final chatUsersProvider = FutureProvider<List<UserModel>>((ref) async {
  final chatService = ref.read(chatServiceProvider);
  return await chatService.fetchChatUsers();
});

final chatMessagesProvider = FutureProvider.family<List<ChatMessage>, Map<String, int>>((ref, ids) async {
  final chatService = ref.read(chatServiceProvider);
  return await chatService.fetchChatMessages(ids['senderId']!, ids['receiverId']!);
});
