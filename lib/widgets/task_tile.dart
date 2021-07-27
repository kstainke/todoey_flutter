import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.task,
      required this.checkboxCallback,
      required this.longPressCallback});

  final Task task;
  final Function(bool?) checkboxCallback;
  final Function()? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
            decoration: task.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }yea
}
