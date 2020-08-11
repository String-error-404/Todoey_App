import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:todoey_app/Models/task.dart';

class Taskslist extends StatefulWidget {
  @override
  _TaskslistState createState() => _TaskslistState();
}

class _TaskslistState extends State<Taskslist> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallback: (bool checkboxState) {
              setState(() {
                tasks[index].toogleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
