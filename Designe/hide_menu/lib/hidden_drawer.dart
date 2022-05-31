import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hide_menu/Pages/home_page.dart';
import 'package:hide_menu/Pages/settings_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _page = [];
  final _myTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _page = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'H O M E P A G E',
          baseStyle: _myTextStyle,
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.deepPurple,
        ),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'S E T T I N G S',
          baseStyle: _myTextStyle,
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.deepPurple,
        ),
        SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.lightGreen,
      screens: _page,
      initPositionSelected: 0,
      slidePercent: 40,
    );
  }
}
