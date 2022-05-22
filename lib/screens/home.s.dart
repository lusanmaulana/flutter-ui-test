import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _menus = <String, IconData>{
    "read": Icons.menu_book,
    "latest": Icons.bookmarks,
    "search": Icons.search,
    "schedule": Icons.schedule,
    "settings": Icons.settings,
  };
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.green,
        currentIndex: _currentIndex,
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: _menus.keys.map((menu) => BottomNavigationBarItem(
          label: menu,
          icon: Icon(
            _menus[menu],
            size: 45,
          ),
        )).toList(),
      ),
    );
  }
}
