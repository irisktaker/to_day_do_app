import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTasksScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Tasks",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[400],
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              addTaskCallBack(newTaskTitle);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white,
            ),
            child: const Text(
              "Add",
            ),
          ),
        ],
      ),
    );
  }
}
