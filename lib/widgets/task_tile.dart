import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.taskTitle,
    required this.isChecked,
    required this.callback,
    required this.longPress,
  }) : super(key: key);

  final String taskTitle;
  final bool isChecked;
  final Function(bool?) callback;
  final Function()? longPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: callback,
      ),
      onLongPress: longPress,
    );
  }
}


