import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class StudentModal {
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;

  StudentModal({required this.name, required this.age, this.id});
}
