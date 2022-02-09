import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        "Go shopping",
      ),
      trailing: TasksCheckBox(),
    );
  }
}

class TasksCheckBox extends StatefulWidget {
  const TasksCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksCheckBox> createState() => _TasksCheckBoxState();
}

class _TasksCheckBoxState extends State<TasksCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: false,
      activeColor: Colors.teal[400],
      onChanged: null,
    );
  }
}
