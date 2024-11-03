import 'package:flutter/material.dart';
import 'package:mental_health_ui/pages/chat_detail_page.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Chat> chats = [
      const Chat(
          name: "Booby Singer", lastMessage: "Take care 😊", time: "23:15"),
      const Chat(
          name: "Dean", lastMessage: "Hey, are you coming?", time: "10:30"),
      const Chat(
          name: "Sam", lastMessage: "Let's meet up later.", time: "11:15"),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Chats"),
          backgroundColor: Colors.blue[800],
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final chat = chats[index];
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue.shade800,
                    child: Text(
                      chat.name[0],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(
                    chat.name,
                    style: const TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(chat.lastMessage),
                  trailing: Text(chat.time),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatDetailPage(),
                      ),
                    );
                  },
                ),
                const Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class Chat {
  final String name;
  final String lastMessage;
  final String time;

  const Chat({
    required this.name,
    required this.lastMessage,
    required this.time,
  });
}
