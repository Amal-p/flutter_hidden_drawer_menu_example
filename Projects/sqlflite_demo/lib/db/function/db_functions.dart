import 'package:flutter/foundation.dart';
import 'package:hive_demo/db/data_model.dart';
import 'package:sqflite/sqflite.dart';

ValueNotifier<List<StudentModal>> studentListNotifier = ValueNotifier([]);
late Database _db;
//initialize database
Future<void> initialize() async {
  _db = await openDatabase('student.db', version: 1,
      onCreate: (Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        'CREATE TABLE student (id INTEGER PRIMARY KEY, name TEXT, age TEXT)');
  });
}

//add
Future<void> addStudent(StudentModal value) async {
  // studentListNotifier.value.add(value);
  final _id = await _db.rawInsert(
      'INSERT INTO student (name, age) VALUES(?,?)', [value.name, value.age]);
  value.id = _id;
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
  //Give a message to listeners to rebuild
}

Future<void> getAllstudent() async {
  final _values = await _db.rawQuery('SELECT * FROM student');
  studentListNotifier.value.clear(); //clear old values
  _values.forEach((map) {
    final student = StudentModal.fromMap(map);
    studentListNotifier.value.add(student);
    studentListNotifier.notifyListeners();
  });
}

Future<void> deleteStudent(int id) async {
  await _db.rawDelete('DELETE FROM student WHERE id = ?', [id]);
  getAllstudent();
  studentListNotifier.notifyListeners();
}
