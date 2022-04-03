import 'package:flutter/material.dart';
import 'package:login_sample/screens/splash.dart';

const SAVE_KEY_NAME = 'UserLogedIn';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Splash(),
    );
  }
}
