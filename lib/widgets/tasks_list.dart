import 'package:flutter/material.dart';

import '../models/tasks.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxChange: (value) {
            setState(() {
              widget.tasks[index].doneChange();
            });
          },
        );
      },
    );
  }
}
