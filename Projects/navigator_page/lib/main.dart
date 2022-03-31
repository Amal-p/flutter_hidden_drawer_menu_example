import 'package:flutter/material.dart';
import 'package:navigator_page/screen2.dart';
import 'package:navigator_page/scrren1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ScreenOne(),
      routes: {
        'screen1': (ctx) {
          return ScreenOne();
        },
        'screen2': (ctx) {
          return ScreenTwo();
        },
      },
    );
  }
}
