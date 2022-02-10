import 'tasks.dart';
import 'package:flutter/material.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "go shopping"),
    Task(name: "buy a gift"),
    Task(name: "repair the car"),
    Task(name: "go to gym"),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(
      Task(name: newTaskTitle),
    );
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }
}
