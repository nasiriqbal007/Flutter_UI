import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tabs/tab_content.dart';

class BookmarkTab extends StatelessWidget {
  const BookmarkTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabContent(
      color: Color.fromRGBO(175, 49, 213, 1),
      itemCount: 3,
    );
  }
}
