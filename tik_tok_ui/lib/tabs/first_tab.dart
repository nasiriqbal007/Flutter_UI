import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tabs/tab_content.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabContent(
      color: Colors.green.shade700,
      itemCount: 9,
    );
  }
}
