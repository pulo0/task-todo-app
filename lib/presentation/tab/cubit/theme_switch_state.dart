part of 'theme_switch_cubit.dart';

class ThemeSwitchState extends Equatable {
  const ThemeSwitchState(
      {this.themeMode = ThemeMode.light,
      this.themeIcon = const Icon(Icons.light_mode)});

  final ThemeMode themeMode;
  final Icon themeIcon;

  ThemeSwitchState copyWith({ThemeMode? themeMode, Icon? themeIcon}) => ThemeSwitchState(
        themeMode: themeMode ?? this.themeMode,
        themeIcon: themeIcon ?? this.themeIcon
      );

  @override
  List<Object?> get props => [themeMode, themeIcon];
}
