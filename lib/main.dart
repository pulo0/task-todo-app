import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_todo_app/presentation/tab/cubit/content_switcher_cubit.dart';
import 'package:task_todo_app/presentation/tab/tab_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContentSwitcherCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Todo App',
        home: TabScreen(),
      ),
    );
  }
}
