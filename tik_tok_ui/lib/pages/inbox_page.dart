import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  final List<String> chats = [
    'Babar Azam',
    'Virat Kohli',
    'Sachin Tendulkar',
    'Shane Warne',
    'Jacques Kallis',
    'Brian Lara',
    'Chris Gayle',
    'Ricky Ponting',
    'AB de Villiers',
    'Kumar Sangakkara',
  ];

  final List<int> unreadMessageCounts = [
    0,
    0,
    3,
    0,
    4,
    0,
    2,
    0,
    2,
    4,
  ];

  final List<String> chatStatuses = [
    'Seen',
    'Sent',
    'Shared a video',
    'Sent',
    'Hello',
    'Sent',
    'No response',
    'Sent',
    'Hi',
    'Bad: Busy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.people, color: Colors.black),
            Text(
              'Inbox',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.search, color: Colors.black),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Create a Story',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 35,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            chats[index - 1],
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.grey[400],
                  ),
                  title: Text(
                    chats[index],
                    style: const TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    chatStatuses[index].startsWith('Bad:')
                        ? chatStatuses[index].substring(5)
                        : chatStatuses[index],
                    style: const TextStyle(color: Colors.black54),
                  ),
                  trailing: (unreadMessageCounts[index] > 0)
                      ? Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '${unreadMessageCounts[index]}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : (chatStatuses[index] == 'Seen' ||
                              chatStatuses[index] == 'Sent')
                          ? const Icon(Icons.photo_camera)
                          : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
