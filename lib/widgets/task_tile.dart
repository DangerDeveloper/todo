import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckboxState;
  final Function onLongPressCallBack;
  final String taskTitle;

  TaskTile({this.isChecked, this.toggleCheckboxState, this.taskTitle,this.onLongPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack,
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
