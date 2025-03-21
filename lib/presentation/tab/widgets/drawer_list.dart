import 'package:flutter/material.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';
import 'package:task_todo_app/styles/app_padding.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: AppPadding.smallHorizontal,
        children: <Widget>[
          const DrawerHeader(
            child: Text('Quick Access Menu'),
          ),
          const SizedBox(height: AppDimensions.m,),
          IconButton(onPressed: () {}, icon: const Icon(Icons.light_mode)),
        ],
      ),
    );
  }
}
