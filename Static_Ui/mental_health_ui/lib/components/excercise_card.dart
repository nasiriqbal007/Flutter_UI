
import 'package:flutter/material.dart';

class ExcerciseCard extends StatelessWidget {
  final IconData icon;
  final String  title;
  final String subtitle;
  final Color color;

  const ExcerciseCard({
    super.key, required this.icon, required this.title, required this.subtitle, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
     color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 24, 
              ),
            ),
            const SizedBox(width: 10),
             Expanded( 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text(
           title,
           style: const TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold,
             color: Colors.black,
           ),
         ),
         const Icon(
           Icons.more_horiz,
           size: 28,
           color: Colors.black,
         ),
       ],
     ),
     const SizedBox(height: 4), 
     Text(
       subtitle, 
       style: const TextStyle(
         fontSize: 16, 
         color: Colors.blueGrey,
       ),
     ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
