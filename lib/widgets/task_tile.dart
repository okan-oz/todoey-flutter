import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: ListTile(
        onLongPress: () {
          longPressCallback();
        },
        title: Text(
          taskTitle,
          style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          side: BorderSide(color: Colors.blue, width: 1, ),
          splashRadius: 50,
          tristate: false,
          shape: CircleBorder(),
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (bool? value) {
            checkboxCallback(value!);
          },
        ),
      ),
    );
  }
}
