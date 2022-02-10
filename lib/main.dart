import 'package:flutter/material.dart';
import 'package:today_do_app/models/tasks_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksData(),
      child:  MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
