import 'package:flutter/material.dart';
import 'package:mental_health_ui/components/chat_message.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPage();
}

class _ChatDetailPage extends State<ChatDetailPage> {
  final List<ChatMessage> sampleMessages = [
    const ChatMessage(
      message: "Hi Jason! how are you?",
      time: "23:11",
      isSentByUser: false,
      type: MessageType.text,
    ),
    const ChatMessage(
      message: "Im good, thanks! how are you?",
      time: "23:12",
      isSentByUser: true,
      type: MessageType.text,
    ),
    const ChatMessage(
      message: "Im great, are you free today?",
      time: "23:13",
      isSentByUser: false,
      type: MessageType.text,
    ),
    const ChatMessage(
      message: "",
      time: "23:14",
      isSentByUser: false,
      type: MessageType.voiceNote,
    ),
    const ChatMessage(
      message: "",
      time: "23:14",
      isSentByUser: true,
      type: MessageType.voiceNote,
    ),
    const ChatMessage(
      message: "Take care 😊",
      time: "23:15",
      isSentByUser: false,
      type: MessageType.text,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade800,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        "Bobby Singer",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text("online", style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.call, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: sampleMessages.length,
                          itemBuilder: (context, index) {
                            final chatMessage = sampleMessages[index];
                            return ChatMessage(
                              message: chatMessage.message,
                              time: chatMessage.time,
                              isSentByUser: chatMessage.isSentByUser,
                              type: chatMessage.type,
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 224, 236, 242),
                                  borderRadius: BorderRadius.circular(12)),
                              padding: const EdgeInsets.all(16),
                              child: const Row(
                                children: [
                                  Text(
                                    "write a message ...",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black38),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.add_a_photo_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Icon(Icons.attach_file_outlined))
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            child: const Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
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
