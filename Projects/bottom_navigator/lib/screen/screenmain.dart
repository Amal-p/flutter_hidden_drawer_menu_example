import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({Key? key}) : super(key: key);
  final _list = [
    'Apple',
    'Orange',
    'Pine apple',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: DropdownButtonFormField(
        hint: Text('Select Fruits'),
        onChanged: (value) {
          print(value);
        },
        items: _list.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
      ),
    ));
  }
}
