import 'package:flutter/material.dart';
import 'package:shared_preferance/screentwo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getData(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: _textController,
              ),
              ElevatedButton(
                  onPressed: () {
                    saveDatatoStorage();
                  },
                  child: Text('submit')),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveDatatoStorage() async {
    print(_textController.text);
    //Shared_preferance code
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("savedvalue", _textController.text);
  }

  Future<void> getData(BuildContext context) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final savedvalue = sharedPreferences.getString("savedvalue");
    if (savedvalue != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenTwo()));
    }
  }
}
