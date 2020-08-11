import 'package:flutter/material.dart';
import 'package:todoey_app/Models/task.dart';
import 'package:todoey_app/widgets/task_list.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (newtext) {
                  newTaskTitle = newtext;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  addTaskCallBack(newTaskTitle);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
