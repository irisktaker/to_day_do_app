import 'package:flutter/material.dart';

import '../models/tasks_data.dart';
import '../widgets/tasks_list.dart';
import 'add_tasks_screen.dart';

import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTasksScreen((newTaskTitle) {
                  // setState(() {
                  //   tasks.add(
                  //     Task(name: newTaskTitle),
                  //   );
                  //   Navigator.pop(context);
                  // });
                }),
              ),
            ),
          );
        },
        backgroundColor: Colors.indigo[400],
        child: const Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Colors.teal[400],
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "ToDayDo",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "${Provider.of<TasksData>(context).tasks.length} Tasks",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: TasksList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
