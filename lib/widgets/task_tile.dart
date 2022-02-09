import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(
        "Go shopping",
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TasksCheckBox(
        isChecked,
        (value) {
          setState(() {
            isChecked = value;
          });
        },
      ),
    );
  }
}

class TasksCheckBox extends StatelessWidget {
  final bool? checked;
  final Function(bool?) checkboxChange;

  TasksCheckBox(this.checked, this.checkboxChange);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: checked,
      onChanged: checkboxChange,
    );
  }
}
