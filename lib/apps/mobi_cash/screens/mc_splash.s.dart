import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_test/apps/mobi_cash/screens/mc_landing.s.dart';
import 'package:flutter_ui_test/cores/const_helper.dart';

class MCSplashScreen extends StatelessWidget {
  const MCSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.of(context).pushReplacement(CupertinoPageRoute(
          builder: (context) => const MCLandingScreen(),
        ));
      },
      child: Scaffold(
        backgroundColor: MCColors.background,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/mc_splash_background.jpg",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(32).copyWith(top: 150, bottom: 48),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text.rich(TextSpan(
                    text: "${Strings.mcTitle}\n\n",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                    ),
                    children: [
                      TextSpan(
                        text: "Mobile payment service for\ngoods and services",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )),
                  Text(
                    "Copyright 2019 Compass Plus Ltd.\nAll rights reserved",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
