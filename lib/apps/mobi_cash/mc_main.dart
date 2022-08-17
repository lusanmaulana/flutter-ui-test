import 'package:flutter/material.dart';
import 'package:flutter_ui_test/apps/mobi_cash/screens/mc_splash.s.dart';
import 'package:flutter_ui_test/cores/const_helper.dart';

class MCApp extends StatelessWidget {
  const MCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.mcTitle,
      theme: ThemeData(
        fontFamily: FontFamily.avenir,
      ),
      home: const MCSplashScreen(),
    );
  }
}
