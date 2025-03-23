import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_todo_app/data/services/service_locator.dart';
import 'package:task_todo_app/domain/repositories/theme_switch_repository.dart';
import 'package:task_todo_app/presentation/tab/cubit/theme_switch_cubit.dart';
import 'package:task_todo_app/presentation/tab/tab_screen.dart';
import 'package:task_todo_app/styles/app_themes.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeSwitchRepository = locator<ThemeSwitchRepository>();
    return BlocProvider(
      create: (context) =>
          ThemeSwitchCubit(themeSwitchRepository: themeSwitchRepository)
            ..getCurrentTheme(),
      child: BlocBuilder<ThemeSwitchCubit, ThemeSwitchState>(
        builder: (BuildContext context, ThemeSwitchState state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightAppTheme(),
            darkTheme: darkAppTheme(),
            themeMode: state.themeMode,
            title: 'Task Todo App',
            home: TabScreen(
              themeSwitchState: state,
              themeSwitchCubit: context.read<ThemeSwitchCubit>(),
            ),
          );
        },
      ),
    );
  }
}
