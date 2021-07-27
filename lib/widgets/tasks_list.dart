import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              task: task,
              longPressCallback: () {
                taskData.deleteTask(task);
              },
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
        );
      },
    );
  }
}
