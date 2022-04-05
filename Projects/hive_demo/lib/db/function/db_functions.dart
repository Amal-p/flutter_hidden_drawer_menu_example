import 'package:flutter/foundation.dart';
import 'package:hive_demo/db/data_model.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<StudentModal>> studentListNotifier = ValueNotifier([]);
//add
Future<void> addStudent(StudentModal value) async {
  // studentListNotifier.value.add(value);
  final studentDb = await Hive.openBox<StudentModal>('studentdb');
  final _id = await studentDb.add(value);
  value.id = _id;
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
  //Give a message to listeners to rebuild
}

Future<void> getAllstudent() async {
  final studentDb = await Hive.openBox<StudentModal>('studentdb');
  studentListNotifier.value.clear(); //clear old values
  studentListNotifier.value.addAll(studentDb.values);
  studentListNotifier.notifyListeners();
}

Future<void> deleteStudent(int id) async {
  final studentDb = await Hive.openBox<StudentModal>('studentdb');
  await studentDb.delete(id);
  getAllstudent();
}
