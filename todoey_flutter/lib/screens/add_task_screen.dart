import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  final taskController = TextEditingController();
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                //fontWeight: FontWeight.w700 ,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter a task',
              ),
              controller: taskController,
            ),
            FlatButton(
              onPressed: () {
                addTaskCallback(taskController.text);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
