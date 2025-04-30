import 'package:dio/dio.dart';
import 'package:japx/japx.dart';
import '../models/user_model.dart';
import '../models/chat_message_model.dart';
import '../support/base_api_service.dart';

class ChatService extends BaseApiService {
  Future<List<UserModel>> fetchChatUsers() async {
    try {
      final response = await get('/chat/chat-messages/queries/contact-users');
      final decoded = Japx.decode(response.data);
      final List<dynamic> userData = decoded['data'];
      print(response);
      return userData.map((e) => UserModel.fromJson(e)).toList();
    } catch (e) {
      print("Fetch Chat Users Error: $e");
      return [];
    }
  }

  Future<List<ChatMessage>> fetchChatMessages(int senderId, int receiverId) async {
    print(senderId);
    print(receiverId);
    try {
      final response = await get('/chat/chat-messages/queries/chat-between-users/$senderId/$receiverId');
      print(response);
      final decoded = Japx.decode(response.data);
      final List<dynamic> chatData = decoded['data'];
      return chatData.map((e) => ChatMessage.fromJson(e)).toList();
    } catch (e) {
      print("Fetch Chat Messages Error: $e");
      return [];
    }
  }
}
