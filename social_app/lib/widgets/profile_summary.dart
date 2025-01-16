import 'package:flutter/material.dart';
import 'package:social_app/widgets/custom_button.dart';

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
        CustomButton(
          text: buttonText,
        ),
      ],
    );
  }
}
