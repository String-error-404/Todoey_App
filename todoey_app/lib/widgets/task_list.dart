import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:todoey_app/Models/task.dart';

class Taskslist extends StatefulWidget {
  final List<Task> tasks;

  Taskslist(this.tasks);

  @override
  _TaskslistState createState() => _TaskslistState();
}

class _TaskslistState extends State<Taskslist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallback: (bool checkboxState) {
              setState(() {
                widget.tasks[index].toogleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
