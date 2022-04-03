import 'package:bottom_navigator/screen/screenaccount.dart';
import 'package:bottom_navigator/screen/screenmain.dart';
import 'package:bottom_navigator/screen/screensearch.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _selectedBottomNavigator = 0;
  final _pages = [ScreenMain(), ScreenSearch(), ScreenAccount()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Navigator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: _pages[_selectedBottomNavigator],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        currentIndex: _selectedBottomNavigator,
        onTap: (newIndex) {
          setState(() {
            _selectedBottomNavigator = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
