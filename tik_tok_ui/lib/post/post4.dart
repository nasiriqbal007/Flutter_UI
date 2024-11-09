import 'package:flutter/material.dart';
import 'package:tik_tok_ui/post/post_template.dart';

class Post4 extends StatelessWidget {
  const Post4({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Shahid Afridi",
      description: "Shahid Afridi's iconic sixes compilation",
      likes: 1023,
      comments: 128,
      bookmarks: 150,
      userPost: Container(
        color: Colors.purple,
      ),
      time: '2 Days ago',
      hashtags: '#ShahidAfridi #BoomBoom #CricketLegend',
    );
  }
}
