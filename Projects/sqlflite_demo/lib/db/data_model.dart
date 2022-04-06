class StudentModal {
  int? id;

  final String name;

  final String age;

  StudentModal({required this.name, required this.age, this.id});
  static StudentModal fromMap(Map<String, Object?> map) {
    final id = map['id'] as int;
    final name = map['name'] as String;
    final age = map['age'] as String;
    return StudentModal(id: id, name: name, age: age);
  }
}
