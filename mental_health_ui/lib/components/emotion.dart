
import 'package:flutter/material.dart';

class Emotion extends StatelessWidget {
  final String text;
  const Emotion({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue[600],
      borderRadius: BorderRadius.circular(12)
      
      ),
      padding: const EdgeInsets.all(12),
      
      child: Text(text,style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),));
  }
}