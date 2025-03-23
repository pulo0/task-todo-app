import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_todo_app/domain/repositories/theme_switch_repository.dart';

part 'theme_switch_state.dart';

class ThemeSwitchCubit extends Cubit<ThemeSwitchState> {
  ThemeSwitchCubit({
    required this.themeSwitchRepository,
  }) : super(const ThemeSwitchState(themeIcon: Icon(Icons.light_mode)));

  final ThemeSwitchRepository themeSwitchRepository;
  static late bool _isDarkTheme;

  Future<void> getCurrentTheme() async {
    themeSwitchRepository.getTheme().then((isDarkTheme) {
      if (isDarkTheme) {
        _isDarkTheme = true;
        emit(state.copyWith(
            themeMode: ThemeMode.dark, themeIcon: const Icon(Icons.dark_mode)));
      } else {
        _isDarkTheme = false;
        emit(state.copyWith(
            themeMode: ThemeMode.light,
            themeIcon: const Icon(Icons.light_mode)));
      }
    });
  }

  Future<void> switchTheme() async {
    if (_isDarkTheme) {
      await themeSwitchRepository.setTheme(false);
      _isDarkTheme = false;
      emit(state.copyWith(
        themeMode: ThemeMode.light,
        themeIcon: const Icon(Icons.light_mode),
      ));
    } else {
      await themeSwitchRepository.setTheme(true);
      _isDarkTheme = true;
      emit(state.copyWith(
        themeMode: ThemeMode.dark,
        themeIcon: const Icon(Icons.dark_mode),
      ));
    }
  }
}
