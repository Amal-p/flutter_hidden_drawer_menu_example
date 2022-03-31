import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigator_page/screen2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Screen in One",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                //   return ScreenTwo();
                // }));
                Navigator.of(context).pushNamed('screen2');
              },
              child: Text("Click to Screen 2!"),
            )
          ],
        ),
      ),
    );
  }
}
