import 'package:flutter/material.dart';
import 'package:flutter_ui_test/cores/const_helper.dart';

class MCLandingScreen extends StatefulWidget {
  const MCLandingScreen({Key? key}) : super(key: key);

  @override
  State<MCLandingScreen> createState() => _MCLandingScreenState();
}

class _MCLandingScreenState extends State<MCLandingScreen> with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: Strings.intros.length, vsync: this);

    super.initState();
  }

  void _onPageChanged(int index) {
    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MCColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: PageView.builder(
              controller: _pageController,
              itemCount: Strings.intros.length,
              itemBuilder: _buildIntroWidget,
              onPageChanged: _onPageChanged,
            ),
          ),
          Center(
            child: TabPageSelector(
              controller: _tabController,
              selectedColor: MCColors.blue,
              color: MCColors.grey,
              indicatorSize: 10,
              borderStyle: BorderStyle.none,
            ),
          ),
          const SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 64),
            child: Column(
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
        ],
      ),
    );
  }

  Widget _buildIntroWidget(BuildContext context, int index) {
    final intro = Strings.intros[index];
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const Spacer(),
            Text(
              intro["title"]!,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              intro["message"]!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: MCColors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
