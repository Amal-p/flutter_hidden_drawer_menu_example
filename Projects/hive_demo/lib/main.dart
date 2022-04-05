import 'package:flutter/material.dart';
import 'package:hive_demo/screenhome.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_demo/db/data_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModalAdapter().typeId)) {
    Hive.registerAdapter(StudentModalAdapter());
  }
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
