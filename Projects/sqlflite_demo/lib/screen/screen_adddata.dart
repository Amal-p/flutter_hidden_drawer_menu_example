import 'package:flutter/material.dart';
import 'package:hive_demo/db/data_model.dart';
import 'package:hive_demo/db/function/db_functions.dart';

class AddData extends StatelessWidget {
  AddData({Key? key}) : super(key: key);
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                onButtonClick();
              },
              icon: const Icon(Icons.add),
              label: Text('Add Data'))
        ],
      ),
    );
  }

  Future<void> onButtonClick() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    final _studentModal = StudentModal(name: _name, age: _age);
    addStudent(_studentModal);
  }
}
