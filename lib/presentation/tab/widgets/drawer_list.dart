import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/tab/cubit/theme_switch_cubit.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';
import 'package:task_todo_app/styles/app_padding.dart';
import 'package:task_todo_app/styles/app_themes.dart';

class DrawerList extends StatefulWidget {
  const DrawerList(this.themeSwitchCubit, this.themeSwitchState, {super.key});

  final ThemeSwitchCubit themeSwitchCubit;
  final ThemeSwitchState themeSwitchState;

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  Brightness lightListener = PlatformDispatcher.instance.platformBrightness;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: AppPadding.smallHorizontal,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Quick Access Menu',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(
            height: AppDimensions.m,
          ),
          IconButton(
            onPressed: () async => widget.themeSwitchCubit.switchTheme(),
            icon: widget.themeSwitchState.themeIcon,
          ),
        ],
      ),
    );
  }
}
