import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsAPP UI"),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Text $index"),
                  subtitle: Text("Message $index"),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 30,
                    backgroundImage: AssetImage('asset/images/Avatar.png'),
                    //   backgroundImage: NetworkImage(
                    //       "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-Cutout.png"),this selctimage from network
                  ),
                  trailing: Text("10:$index PM"),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 30)),
    );
  }
}
