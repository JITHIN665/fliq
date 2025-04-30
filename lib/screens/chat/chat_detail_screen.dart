import 'package:fliq/support/helper.dart';
import 'package:fliq/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../providers/chat_provider.dart';

class ChatDetailScreen extends ConsumerStatefulWidget {
  final int senderId;
  final int receiverId;
  final String user;
  final String profilePhotoUrl;

  const ChatDetailScreen({super.key, required this.user, required this.senderId, required this.receiverId, required this.profilePhotoUrl});

  @override
  ConsumerState<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends ConsumerState<ChatDetailScreen> {
  final TextEditingController controller = TextEditingController();
  final ScrollController scrollController = ScrollController();

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final messagesFuture = ref.read(chatMessagesProvider({'senderId': widget.senderId, 'receiverId': widget.receiverId}).future);

    return Scaffold(
      backgroundColor: appColor(context).background!.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: appColor(context).background!.withOpacity(0.9),
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: widget.profilePhotoUrl != "" ? NetworkImage(widget.profilePhotoUrl) : null,
              child: widget.profilePhotoUrl == "" ? Text(widget.user) : null,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.user, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: appColor(context).gridColor)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("Online", style: TextStyle(fontSize: 12, color: appColor(context).gridColor)),
                    SizedBox(width: 4),
                    Icon(Icons.circle, size: 10, color: Color(0xff29DF72)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          color: appColor(context).ternaryText,
        ),
        child: Column(
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
                    return Center(child: Text("Start a chat", style: TextStyle(color: appColor(context).background)));
                  }

                  final messages = snapshot.data!;
                  WidgetsBinding.instance.addPostFrameCallback((_) => scrollToBottom());

                  String? lastDateLabel;

                  return ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.all(12),
                    itemCount: messages.length,
                    itemBuilder: (_, index) {
                      final msg = messages[index];
                      final isMe = msg.senderId == widget.senderId;
                      final dateTime = DateTime.parse(msg.createdAt ?? DateTime.now().toIso8601String());
                      final formattedTime = DateFormat.jm().format(dateTime);
                      final dateLabel = getDateLabel(dateTime);

                      final showDateHeader = dateLabel != lastDateLabel;
                      lastDateLabel = dateLabel;

                      return Column(
                        crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                        children: [
                          if (showDateHeader)
                            Center(
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(12)),
                                child: Text(dateLabel, style: const TextStyle(fontSize: 12, color: Colors.black54)),
                              ),
                            ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: isMe ? appColor(context).primary : appColor(context).background?.withOpacity(0.4),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomRight: isMe ? Radius.circular(0) : Radius.circular(8),
                                bottomLeft: isMe ? Radius.circular(8) : Radius.circular(0),
                              ),
                            ),
                            child: Text(msg.message ?? "", style: TextStyle(color: isMe ? appColor(context).ternaryText : Colors.black87)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                              children: [
                                Text(formattedTime, style: TextStyle(fontSize: 10, color: appColor(context).primaryText)),
                                isMe ? Image.asset("assets/icon/deliver.png", height: 15) : SizedBox(),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Container(
                decoration: BoxDecoration(color: const Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(24)),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        decoration: const InputDecoration(hintText: "Happy Birthday", border: InputBorder.none),
                        onSubmitted: (_) {},
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.clear();
                        scrollToBottom();
                      },
                      child: Image.asset("assets/icon/send.png", height: 24),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
