import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_colors.tailor.dart';

// glimmers of knowledge about color theory courtesy of:
// Adobe Color: https://color.adobe.com

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class AppColors extends ThemeExtension<AppColors> with _$AppColorsTailorMixin {
  const AppColors({
    required this.neutral50,
    required this.neutral100,
    required this.neutral200,
    required this.neutral300,
    required this.neutral400,
    required this.neutral500,
    required this.neutral600,
    required this.neutral700,
    required this.neutral800,
    required this.neutral900,
    required this.primary100,
    required this.primary200,
    required this.primary300,
    required this.primary400,
    required this.primary500,
  });

  @override
  final Color neutral50;
  @override
  final Color neutral100;
  @override
  final Color neutral200;
  @override
  final Color neutral300;
  @override
  final Color neutral400;
  @override
  final Color neutral500;
  @override
  final Color neutral600;
  @override
  final Color neutral700;
  @override
  final Color neutral800;
  @override
  final Color neutral900;
  @override
  final Color primary100;
  @override
  final Color primary200;
  @override
  final Color primary300;
  @override
  final Color primary400;
  @override
  final Color primary500;

  static const AppColors palette = AppColors(
    neutral50: Color(0xFF232323),
    neutral100: Color(0xFF323331),
    neutral200: Color(0xFF40413F),
    neutral300: Color(0xFF4D4E4C),
    neutral400: Color(0xFF5B5C59),
    neutral500: Color(0xFF686966),
    neutral600: Color(0xFF767773),
    neutral700: Color(0xFF838581),
    neutral800: Color(0xFF90928E),
    neutral900: Color(0xFFB9BBB5),
    primary100: Color(0xFFE09558),
    primary200: Color(0xFFCD9160),
    primary300: Color(0xFFB98B65),
    primary400: Color(0xFF433C36),
    primary500: Color(0xFF332921),
  );
}

// class AppColors {
//   static const neutral = Color(0xFF232323);
//   static const neutral100 = Color(0xFF323331);
//   static const neutral200 = Color(0xFF40413F);
//   static const neutral300 = Color(0xFF4D4E4C);
//   static const neutral400 = Color(0xFF5B5C59);
//   static const neutral500 = Color(0xFF686966);
//   static const neutral600 = Color(0xFF767773);
//   static const neutral700 = Color(0xFF838581);
//   static const neutral800 = Color(0xFF90928E);
//   static const neutral900 = Color(0xFFB9BBB5);
//
//   static const primary100 = Color(0xFFE09558);
//   static const primary200 = Color(0xFFCD9160);
//   static const primary300 = Color(0xFFB98B65);
//   static const primary400 = Color(0xFF433C36);
//   static const primary500 = Color(0xFF332921);
// }
