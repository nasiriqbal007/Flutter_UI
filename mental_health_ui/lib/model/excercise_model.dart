import 'package:flutter/material.dart';

class Exercise {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  Exercise(
    this.color, {
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

final List<Exercise> exercises = [
  Exercise(
      icon: Icons.favorite,
      title: "Speaking Skills",
      subtitle: "Education",
      Colors.orange.shade600),
  Exercise(
      icon: Icons.book,
      title: "Reading Speed",
      subtitle: "10 exercises",
      Colors.blue),
  Exercise(
    icon: Icons.self_improvement,
    title: "Self-Care Routines",
    subtitle: "10 routines",
    Colors.green,
  ),
];
