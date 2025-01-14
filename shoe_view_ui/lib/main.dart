import 'package:flutter/material.dart';
import 'package:shoe_view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product View',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          iconButtonTheme: const IconButtonThemeData(
              style: ButtonStyle(
                  iconColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 146, 144, 144)))),
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}
