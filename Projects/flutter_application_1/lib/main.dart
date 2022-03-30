import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  String name = 'Interintender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(),
      //Ther is no appbar text go up
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow, //width: double.infinity,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print("Text button Clicked");
                          },
                          child: const Text(
                            'Click Me!',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              print("icon button Clicked");
                            },
                            icon: const Icon(
                              Icons.mic,
                            )),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("Elivated button Clicked");
                      },
                      child: const Text(
                        'Click Me!',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                child: const Center(child: Text('Sample Text !')),
              ),
            ),
            //secondcontainer
            Expanded(
              child: Container(
                color: Colors.purple,
                //width: double.infinity,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print("Text button Clicked");
                          },
                          child: const Text(
                            'Click Me!',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              print("icon button Clicked");
                            },
                            icon: const Icon(
                              Icons.mic,
                            )),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("Elivated button Clicked");
                      },
                      child: const Text(
                        'Click Me!',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
