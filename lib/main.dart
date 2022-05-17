import 'package:flutter/material.dart';

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
        primarySwatch: Colors.lightGreen,
      ),
    );
  }
}
