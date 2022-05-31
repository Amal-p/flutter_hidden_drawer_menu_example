import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.yellow[300],
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.yellow[300],
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.yellow[300],
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.yellow[300],
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
