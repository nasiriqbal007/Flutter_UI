import 'package:flutter/material.dart';

import 'package:tik_tok_ui/post/nasir.dart';
import 'package:tik_tok_ui/post/post2.dart';
import 'package:tik_tok_ui/post/post3.dart';
import 'package:tik_tok_ui/post/post4.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        children: const [NasirIqbal(), Post2(), Post3(), Post4()],
      ),
    );
  }
}
