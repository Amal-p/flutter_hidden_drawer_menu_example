import 'package:flutter/material.dart';
import 'package:shared_preferance/homescreen.dart';
import 'package:shared_preferance/screentwo.dart';
import 'package:shared_preferences/shared_preferences.dart';

// late SharedPreferences sharedPreferences;
Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomeScreen(),
    );
  }
}
