import 'package:flutter/material.dart';
import 'package:flutter_ui_test/cores/const_helper.dart';

class MCLandingScreen extends StatefulWidget {
  const MCLandingScreen({Key? key}) : super(key: key);

  @override
  State<MCLandingScreen> createState() => _MCLandingScreenState();
}

class _MCLandingScreenState extends State<MCLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MCColors.background,
      body: Padding(
        padding: const EdgeInsets.all(16).copyWith(bottom: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: MCColors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: const Text(
                Strings.signUp,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text.rich(
              TextSpan(
                text: "Already have an account? ",
                children: [
                  TextSpan(
                    text: Strings.signIn,
                    style: TextStyle(color: MCColors.blue),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
