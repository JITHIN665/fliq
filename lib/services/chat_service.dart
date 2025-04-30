import 'package:japx/japx.dart';
import '../models/user_model.dart';
import '../models/chat_message_model.dart';
import '../support/base_api_service.dart';

class ChatService extends BaseApiService {
  ///
  ///Fetch Users
  ///
  Future<List<UserModel>> fetchChatUsers() async {
    try {
      final response = await get('/chat/chat-messages/queries/contact-users');
      final decoded = Japx.decode(response.data);
      final List<dynamic> userData = decoded['data'];
      return userData.map((e) => UserModel.fromJson(e)).toList();
    } catch (e) {
      print("Fetch Chat Users Error: $e");
      return [];
    }
  }

  ///
  ///Fetch Messages
  ///
  Future<List<ChatMessage>> fetchChatMessages(int senderId, int receiverId) async {
    try {
      final response = await get('/chat/chat-messages/queries/chat-between-users/$senderId/$receiverId');
      final decoded = Japx.decode(response.data);
      final List<dynamic> chatData = decoded['data'];
      return chatData.map((e) => ChatMessage.fromJson(e)).toList();
    } catch (e) {
      print("Fetch Chat Messages Error: $e");
      return [];
    }
  }
}
