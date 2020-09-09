import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskList extends StatefulWidget {
  final bool isChecked = false;
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallback: (checkBoxState) {
              setState(() {
                tasks[index].isDone = checkBoxState;
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
