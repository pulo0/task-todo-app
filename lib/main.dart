import 'package:flutter/material.dart';
import 'package:task_todo_app/app_bar_icons_buttons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Todo App',
      home: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: AppBarIconsButtons(
                optionIcon: const Icon(Icons.menu_outlined),
                onButtonPress: () {},
                paddingOptionToLeft: 16,
              ),
              // According to DevTools the Padding parent of nested in him
              // IconButton and so on has w=66
              leadingWidth: 66,
              title: const Text('Main Page'),
              centerTitle: true,
              actions: [
                AppBarIconsButtons(
                  optionIcon: const Icon(Icons.notifications),
                  onButtonPress: () {},
                  paddingOptionToRight: 16,
                )
              ]),
          body: const Center(
            child: Text('Main Page'),
          )),
    );
  }
}
