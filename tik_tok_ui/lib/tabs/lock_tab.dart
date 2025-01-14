import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tabs/tab_content.dart';

class LockTab extends StatelessWidget {
  const LockTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabContent(
      color: Color.fromARGB(255, 131, 107, 135),
      itemCount: 7,
    );
  }
}
