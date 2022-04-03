import 'package:flutter/material.dart';
import 'package:login_sample/main.dart';
import 'package:login_sample/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                signOut(context);
              },
              icon: Icon(Icons.logout))
        ],
        title: const Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: const SafeArea(
          child: Center(
        child: Image(
            image: NetworkImage(
                'https://c.tenor.com/ZoZqWaSnN5UAAAAi/diwali-sparkles-stars.gif')),
      )),
    );
  }

  Future<void> signOut(BuildContext ctx) async {
    final _sharedPreferance = await SharedPreferences.getInstance();
    await _sharedPreferance.clear(); //to clear all data
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => LoginScreen()), (route) => false);
  }
}
