import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_sample/main.dart';
import 'package:login_sample/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameControler = TextEditingController();

  final _passworControler = TextEditingController();

  bool _visible = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: _usernameControler,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'USER NAME',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passworControler,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'PASSWORD',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _visible,
                    child: const Text(
                      'Username OR Password incorrect',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        checkLogin(context);
                      }
                    },
                    icon: const Icon(Icons.check),
                    label: const Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkLogin(ctx) async {
    final _userName = _usernameControler.text;
    final _password = _passworControler.text;
    if (_userName == 'test' && _password == 'test') {
      //setshared preferance
      final _sharedPreferance = await SharedPreferences.getInstance();
      await _sharedPreferance.setBool(SAVE_KEY_NAME, true);
      //Goto Home
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
    } else {
      final _error = 'Username OR Password incorrect';
      //snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          backgroundColor: Colors.red,
          content: Text(
            _error,
            style: const TextStyle(
              color: Colors.white,
            ),
          )));
      //Text
      setState(() {
        _visible = true;
      });
      await Future.delayed(Duration(seconds: 3));
      killMessage();
    }
  }

  Future<void> killMessage() async {
    setState(() {
      _visible = false;
    });
  }
}
