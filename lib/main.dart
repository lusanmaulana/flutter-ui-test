import 'package:flutter/material.dart';
import 'package:flutter_ui_test/screens/home.s.dart';

void main() {
  runApp(const UITestApp());
}

class UITestApp extends StatelessWidget {
  const UITestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI Test App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(
        title: "Flutter UI Test App",
      ),
    );
  }
}
