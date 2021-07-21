import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  //const TodoListItem({Key? key}) : super(key: key);
  const TodoListItem({required this.itemText});

  final itemText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(itemText),
      trailing: Checkbox(
        value: false,
        onChanged: (newValue) {},
      ),
    );
  }
}
