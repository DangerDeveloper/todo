import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckboxState;
  final String taskTitle;

  TaskTile({this.isChecked, this.toggleCheckboxState, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}
