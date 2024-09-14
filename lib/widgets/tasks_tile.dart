import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  bool isChecked = false;
  String taskTitle;
  void Function(bool?) checkBoxCallBack;
  void Function() longPressCallBack;

  TasksTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,

        // checkBoxCallBack,
      ),
    );
  }
}
