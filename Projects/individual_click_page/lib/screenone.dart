import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:individual_click_page/screentwo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text("Text $index"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return ScreenTwo(name: "Text $index");
                }));
              },
              subtitle: Text("Message $index"),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider(
              color: Colors.green,
            );
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
