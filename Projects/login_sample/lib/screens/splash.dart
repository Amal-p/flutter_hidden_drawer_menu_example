import 'package:flutter/material.dart';
import 'package:login_sample/main.dart';
import 'package:login_sample/screens/home.dart';
import 'package:login_sample/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    checkUserLogedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/Avatar.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> goToLogin() async {
    await Future.delayed(Duration(
      seconds: 3,
    ));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => LoginScreen()));
  }

  Future<void> checkUserLogedIn() async {
    final _sharedPreferance = await SharedPreferences.getInstance();
    final _userLogedStatus = _sharedPreferance.getBool(SAVE_KEY_NAME);
    if (_userLogedStatus == null || _userLogedStatus == false) {
      goToLogin();
    } else {
      await Future.delayed(Duration(
        seconds: 3,
      ));
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
    }
  }
}
