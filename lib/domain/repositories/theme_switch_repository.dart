
abstract class ThemeSwitchRepository {
  Future<bool> getTheme();

  Future<void> setTheme(bool isDarkTheme);
}