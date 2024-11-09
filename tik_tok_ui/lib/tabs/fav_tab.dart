import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tabs/tab_content.dart';

class FavTab extends StatelessWidget {
  const FavTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabContent(
      color: Colors.red,
      itemCount: 5,
    );
  }
}
