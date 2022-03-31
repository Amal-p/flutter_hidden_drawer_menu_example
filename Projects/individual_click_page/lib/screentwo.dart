import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenTwo extends StatelessWidget {
  final String name;

  const ScreenTwo({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Back'))
            ],
          ),
        ),
      ),
    );
  }
}
