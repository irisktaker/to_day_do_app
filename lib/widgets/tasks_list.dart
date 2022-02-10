import 'package:flutter/material.dart';
import 'task_tile.dart';

import 'package:provider/provider.dart';
import 'package:today_do_app/models/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          // itemCount: Provider.of<TasksData>(context).tasks.length,
          // instead of using -> Provider.of<TasksData>(context).   we use now -> taskData.
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxChange: (value) {
                taskData.updateTask(
                  taskData.tasks[index],
                );
              },
            );
          },
        );
      },
    );
  }
}
