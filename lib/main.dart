import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/tab/tab_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Todo App',
      home: TabScreen(),
    );
  }
}
