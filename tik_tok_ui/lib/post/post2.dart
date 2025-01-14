import 'package:flutter/material.dart';
import 'package:tik_tok_ui/post/post_template.dart';

class Post2 extends StatelessWidget {
  const Post2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Shoaib Akhtar",
      description: "Fastest deliveries in cricket history",
      likes: 780,
      comments: 55,
      bookmarks: 67,
      userPost: Container(
        color: Colors.red,
      ),
      time: '3 Days ago',
      hashtags: '#RawalpindiExpress #FastBowling',
    );
  }
}
