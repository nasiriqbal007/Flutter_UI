import 'package:flutter/material.dart';
import 'package:sock_animation_ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sock Animaiton',
        theme: ThemeData(brightness: Brightness.light),
        home: const HomePage());
  }
}
