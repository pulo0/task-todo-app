import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_todo_app/domain/repositories/theme_switch_repository.dart';

class ThemeSwitchImpl implements ThemeSwitchRepository {
  @override
  Future<bool> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isDarkTheme') ??
        SchedulerBinding.instance.platformDispatcher.platformBrightness ==
            Brightness.dark;
  }

  @override
  Future<void> setTheme(bool isDarkTheme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkTheme', isDarkTheme);
  }
}
