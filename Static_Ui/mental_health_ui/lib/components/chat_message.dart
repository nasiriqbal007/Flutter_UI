import 'package:flutter/material.dart';

enum MessageType { text, voiceNote, emoji }

class ChatMessage extends StatelessWidget {
  final String message;
  final String time;
  final bool isSentByUser;
  final MessageType type;

  const ChatMessage({
    super.key,
    required this.message,
    required this.time,
    required this.isSentByUser,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: isSentByUser ? Alignment.centerRight : Alignment.centerLeft,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * 0.9,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: isSentByUser
                    ? Colors.blue[800]
                    : const Color.fromARGB(255, 224, 236, 242),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft:
                      isSentByUser ? const Radius.circular(20) : Radius.zero,
                  bottomRight:
                      isSentByUser ? Radius.zero : const Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (type == MessageType.text)
                        Expanded(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 16,
                              color: isSentByUser ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      if (type == MessageType.voiceNote)
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.play_arrow,
                                  color: isSentByUser
                                      ? Colors.white
                                      : Colors.black),
                              const SizedBox(width: 8),
                              Flexible(
                                child: Container(
                                  height: 2,
                                  color: isSentByUser
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      if (type == MessageType.emoji)
                        Text(
                          message,
                          style: const TextStyle(fontSize: 24),
                        ),
                      const SizedBox(width: 4),
                      Text(
                        time,
                        style: TextStyle(
                          color: isSentByUser ? Colors.white60 : Colors.black45,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
