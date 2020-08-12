import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/Models/task_data.dart';

class Taskslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return GestureDetector(
              onLongPress: () {
                Provider.of<TaskData>(context).removeTask(index);
              },
              child: TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkBoxCallback: (bool checkboxState) {
                    taskData.updateTask(task);
                  }),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
