import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sample List View",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          //suparate each widget
          itemBuilder: (ctx, index) {
            return Text("Text $index");
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: 50,
        ),
        // child: ListView(
        //   //ListView allow scrolling
        //   //column not allow scrolling
        //   children: List.generate(100, (index) {
        //     return Column(
        //       children: [
        //         Text("Text $index"),
        //         const Divider(
        //           color: Colors.grey,
        //           thickness: 5,
        //         ),
        //       ],
        //     );
        //   }),
        // ),
      ),
    );
  }
}
