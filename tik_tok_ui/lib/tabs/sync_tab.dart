import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tabs/tab_content.dart';

class SyncTab extends StatelessWidget {
  const SyncTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabContent(
      color: Colors.teal,
      itemCount: 4,
    );
  }
}
