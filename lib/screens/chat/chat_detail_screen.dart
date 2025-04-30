import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/chat_provider.dart';

class ChatDetailScreen extends ConsumerWidget {
  final int senderId;
  final int receiverId;
  final String user;

  const ChatDetailScreen({super.key, required this.user, required this.senderId, required this.receiverId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messagesFuture = ref.read(chatMessagesProvider({'senderId': senderId, 'receiverId': receiverId}).future);

    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(radius: 18, child: Icon(Icons.person)),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(user, style: const TextStyle(fontSize: 16)), const Text("Online", style: TextStyle(fontSize: 11, color: Colors.green))],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: messagesFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(child: Text("Failed to load messages"));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text("Start a chat", style: TextStyle(fontSize: 16, color: Colors.grey)));
                }

                final messages = snapshot.data!;
                return ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: messages.length,
                  itemBuilder: (_, index) {
                    final msg = messages[index];
                    final isMe = msg.senderId == senderId;
                    return Align(
                      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: isMe ? Colors.pink.shade100 : Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
                        child: Text(msg.message??""),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.pink),
                  onPressed: () {
                    // Send message logic here (API call can be added)
                    // controller.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
