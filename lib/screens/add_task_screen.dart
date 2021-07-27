import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              controller: nameController,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text('Add'),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(Task(name: nameController.text));
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
