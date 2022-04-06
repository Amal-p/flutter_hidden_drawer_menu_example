import 'package:flutter/material.dart';
import 'package:hive_demo/db/function/db_functions.dart';
import 'package:hive_demo/screenhome.dart';
import 'package:hive_demo/db/data_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
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
