import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Go shopping",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: null,
        // onChanged: checkboxChange,
      ),
    );
  }
}

// (value) {
//           setState(() {
//             isChecked = value;
//           });
//         },

