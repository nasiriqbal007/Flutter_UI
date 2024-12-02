import 'package:flutter/material.dart';
import 'package:tik_tok_ui/post/post_template.dart';

class NasirIqbal extends StatelessWidget {
  const NasirIqbal({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Nasir Iqbal",
      description: "Sharing my latest Flutter UI",
      likes: 150,
      comments: 20,
      bookmarks: 35,
      userPost: Container(
        color: Colors.green,
      ),
      time: '5 Days ago',
      hashtags: '#FlutterDeveloper #AppDevelopment',
    );
  }
}
