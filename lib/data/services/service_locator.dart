import 'package:get_it/get_it.dart';
import 'package:task_todo_app/data/implementations/theme_switch_impl.dart';
import 'package:task_todo_app/domain/repositories/theme_switch_repository.dart';

final locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton<ThemeSwitchRepository>(
    () => ThemeSwitchImpl(),
  );
}
