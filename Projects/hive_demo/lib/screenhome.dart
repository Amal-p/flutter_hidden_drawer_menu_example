import 'package:flutter/material.dart';
import 'package:hive_demo/db/function/db_functions.dart';
import 'package:hive_demo/screen/screen_adddata.dart';
import 'package:hive_demo/screen/screen_listdata.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllstudent();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          AddData(),
          const Expanded(child: ListData()),
        ],
      )),
    );
  }
}
