import 'package:flutter/material.dart';
import 'package:hive_demo/db/data_model.dart';
import 'package:hive_demo/db/function/db_functions.dart';
import 'package:hive_demo/screen/screen_adddata.dart';

class ListData extends StatelessWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder:
          (BuildContext ctx, List<StudentModal> studentList, Widget? child) {
        return ListView.separated(
            itemBuilder: (ctx, index) {
              final data = studentList[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.age),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (data.id != null) {
                        } else {
                          print('Unable to edit id is missing');
                        }
                      },
                      icon: const Icon(Icons.edit),
                      color: Colors.blue,
                    ),
                    IconButton(
                      onPressed: () {
                        if (data.id != null) {
                          deleteStudent(data.id!);
                        } else {
                          print('Unable to delete id is missing');
                        }
                      },
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: studentList.length);
      },
    );
  }
}
