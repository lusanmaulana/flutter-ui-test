import 'package:flutter/material.dart';
import 'package:flutter_ui_test/cores/const_helper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MCColors.background,
      body: Stack(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              color: MCColors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          _buildSignUpForm(),
        ],
      ),
    );
  }

  Widget _buildSignUpForm() {
    return Padding(
      padding: const EdgeInsets.all(16).copyWith(top: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  Strings.signUp,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  style: TextStyle(fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: MCColors.grey),
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  style: TextStyle(fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: MCColors.grey),
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  style: TextStyle(fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(color: MCColors.grey),
                  ),
                ),
                const SizedBox(height: 32),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
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
                const SizedBox(height: 24),
                const Text.rich(
                  TextSpan(
                    text: "By clicking this button, you agree with\nour ",
                    children: [
                      TextSpan(
                        text: "Terms and Conditions",
                        style: TextStyle(color: MCColors.blue),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MCColors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logo_dev,
                        size: 40,
                      ),
                      Expanded(
                        child: Text(
                          "Google",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MCColors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logo_dev,
                        size: 40,
                      ),
                      Expanded(
                        child: Text(
                          "Facebook",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MCColors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
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
            style: TextStyle(
              fontSize: 16,
              color: MCColors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
