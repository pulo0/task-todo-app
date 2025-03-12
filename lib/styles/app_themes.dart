import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_todo_app/styles/app_colors.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';

// ColorScheme get colorSchemeDark => ColorScheme.fromSeed(
//       seedColor: const Color(0xFF1C1D22),
//       brightness: Brightness.dark,
//     );

TextTheme get universalTextTheme =>
    GoogleFonts.getTextTheme('Work Sans').copyWith(
        titleLarge: const TextStyle(fontSize: 64, fontWeight: FontWeight.w700),
        bodyMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        bodySmall: const TextStyle(
            fontSize: 9.5,
            fontWeight: FontWeight.normal,
            color: Colors.black45));

ThemeData lightAppTheme() => ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Work Sans',
    primaryColor: AppColors.primary100,
    colorScheme: ThemeData().colorScheme.copyWith(
        primary: AppColors.neutral100, secondary: AppColors.primary100),
    splashColor: AppColors.primary400,
    highlightColor: AppColors.primary500.withOpacity(.5),
    textTheme: universalTextTheme);

ThemeData mainTheme() => ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: GoogleFonts.getTextTheme('Work Sans').copyWith(
        bodyMedium: const TextStyle(
          color: Colors.white,
          // fontWeight: FontWeight.w700,
        ),
      ),
      cardTheme: CardTheme(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.miniBorderCurve),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
      fontFamily: 'Work Sans',
    );
