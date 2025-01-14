import 'package:flutter/material.dart';
import 'package:tik_tok_ui/post/post_template.dart';

class Post3 extends StatelessWidget {
  const Post3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Babar Azam",
      description: "Masterclass innings in today's match",
      likes: 450,
      comments: 32,
      bookmarks: 27,
      userPost: Container(
        color: Colors.teal,
      ),
      time: 'Yesterday',
      hashtags: '#BabarAzam #CricketMasterclass #PCT',
    );
  }
}
