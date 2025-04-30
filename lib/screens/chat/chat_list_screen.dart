import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/chat_provider.dart';
import 'chat_detail_screen.dart';

class ChatListScreen extends ConsumerWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(chatUsersProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Messages")),
      body: usersAsync.when(
        data:
            (users) => Column(
              children: [
                SizedBox(
                  height: 90,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: users.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder:
                        (_, index) => Column(
                          children: [
                            CircleAvatar(radius: 28, backgroundColor: Colors.pink[100], child: Text(users[index].name[0])),
                            const SizedBox(height: 4),
                            Text(users[index].name, style: const TextStyle(fontSize: 12), overflow: TextOverflow.ellipsis),
                          ],
                        ),
                  ),
                ),
                const Divider(),
                Expanded(
                  child: ListView.separated(
                    itemCount: users.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (_, index) {
                      final user = users[index];
                      return ListTile(
                        leading: CircleAvatar(child: Text(user.name[0])),
                        title: Text(user.name),
                        subtitle: Text(user.email),
                        trailing: const Text("10:00 AM", style: TextStyle(fontSize: 12)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => ChatDetailScreen(senderId: 55, receiverId: int.parse(user.id), user: user.name)),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text("Error loading users")),
      ),
    );
  }
}
