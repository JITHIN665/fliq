import 'package:fliq/support/helper.dart';
import 'package:fliq/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fliq/providers/chat_provider.dart';
import 'chat_detail_screen.dart';
import 'package:fliq/widgets/search_bar_widget.dart';

class ChatListScreen extends ConsumerStatefulWidget {
  const ChatListScreen({super.key});

  @override
  ConsumerState<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends ConsumerState<ChatListScreen> {
  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    final usersAsync = ref.watch(chatUsersProvider);

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text("Messages", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: appColor(context).gridColor)),
        centerTitle: false,
        leading: const BackButton(),
      ),
      body: usersAsync.when(
        data: (users) {
          final filtered = users.where((u) => u.name?.toLowerCase().contains(searchTerm.toLowerCase()) ?? false).toList();

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: filtered.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (_, index) {
                      final user = filtered[index];
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: user.profilePhotoUrl != null ? NetworkImage(user.profilePhotoUrl!) : null,
                            backgroundColor: Colors.pink[100],
                            child: user.profilePhotoUrl == null ? Text(user.name?[0] ?? "") : null,
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            width: 60,
                            child: Text(
                              capitalizeEachWord(user.name ?? ""),
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: appColor(context).gridColor),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SearchBarWidget(onChanged: (val) => setState(() => searchTerm = val)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text("Chat", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: appColor(context).gridColor)),
                ),
                Expanded(
                  child:
                      filtered.isEmpty
                          ? const Center(child: Text("No data"))
                          : ListView.separated(
                            itemCount: filtered.length,
                            separatorBuilder:
                                (_, __) => Divider(height: .5, color: appColor(context).background!.withOpacity(.4), indent: 16, endIndent: 16),
                            itemBuilder: (_, index) {
                              final user = filtered[index];
                              return ListTile(
                                contentPadding: EdgeInsets.symmetric(vertical: 12),
                                leading: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: user.profilePhotoUrl != null ? NetworkImage(user.profilePhotoUrl!) : null,
                                  child: user.profilePhotoUrl == null ? Text(user.name?[0] ?? "") : null,
                                ),
                                title: Text(
                                  capitalizeEachWord(user.name ?? ""),
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: appColor(context).gridColor),
                                ),
                                trailing: Text(formatTime(user.messageReceivedFromPartnerAt ?? ""), style: TextStyle(fontSize: 12)),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (_) => ChatDetailScreen(
                                            senderId: 55,
                                            receiverId: int.parse(user.authUserId.toString()),
                                            user: user.name ?? "",
                                          ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text("Error loading users")),
      ),
    );
  }
}
