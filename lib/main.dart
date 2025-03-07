import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/tab/tab_screen.dart';
import 'package:task_todo_app/styles/app_themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightAppTheme(),
      darkTheme: mainTheme(),
      themeMode: ThemeMode.system,
      title: 'Task Todo App',
      home: const TabScreen(),
    );
  }
}
