import 'package:flutter/material.dart';

class ProfileSummary extends StatelessWidget {
  const ProfileSummary({
    super.key,
    required this.count,
    required this.text,
    required this.buttonText,
  });
  final String count;
  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFFCCCDCC),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.06),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
