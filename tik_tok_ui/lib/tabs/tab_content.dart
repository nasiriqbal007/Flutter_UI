import 'package:flutter/material.dart';

class TabContent extends StatelessWidget {
  const TabContent({super.key, required this.color, required this.itemCount});
  final Color color;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 0.9),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Container(
          color: color,
          child: Center(
            child: Text(
              'Video ${index + 1}',
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        );
      },
    );
  }
}
