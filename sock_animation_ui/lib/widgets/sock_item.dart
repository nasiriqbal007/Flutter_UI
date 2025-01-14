import 'package:flutter/material.dart';

class SockItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final EdgeInsetsGeometry? margin;
  final Color color;

  const SockItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.margin,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.2 / 1,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 56,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: color),
              child: Image.asset(
                imagePath,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color.fromRGBO(97, 90, 90, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  price,
                  style: const TextStyle(
                    color: Color.fromRGBO(97, 90, 90, .7),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
