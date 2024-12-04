import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final int animationDuration;

  const CategoryButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.animationDuration = 1200, // Default animation duration
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: animationDuration),
      child: MaterialButton(
        elevation: 0,
        highlightElevation: 0,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(10),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
