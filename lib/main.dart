import 'package:flutter/material.dart';
import 'package:flutter_ui_test/cores/const_helper.dart';
import 'package:flutter_ui_test/screens/main.s.dart';

void main() {
  runApp(const UITestApp());
}

class UITestApp extends StatelessWidget {
  const UITestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Strings.appName,
      home: MainScreen(),
    );
  }
}
