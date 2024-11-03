import 'package:flutter/material.dart';

class Consultant {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  Consultant(this.color, {
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

final List<Consultant> consultants = [
  Consultant(
    icon: Icons.person,
    title: "Bobby Singer",
    subtitle: "Education",
    Colors.orange.shade600,
  ),
 
  Consultant(
    icon: Icons.person,
    title: "Dean Winchester",
    subtitle: "Motivational Speaker",
    Colors.red.shade600,
  ),
  Consultant(
    icon: Icons.person,
    title: "Sam Winchester",
    subtitle: "Life Coach",
    Colors.purple.shade600,
  ),
];
