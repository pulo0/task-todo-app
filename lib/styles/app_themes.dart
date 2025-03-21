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
        ));

ThemeData lightAppTheme() => ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Work Sans',
    primaryColor: AppColors.palette.primary100,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.palette.primary400,
      dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
    ),
    splashColor: AppColors.palette.primary400,
    highlightColor: AppColors.palette.primary500.withOpacity(.5),
    textTheme: universalTextTheme);

ThemeData darkAppTheme() => ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.palette.primary400,
        brightness: Brightness.dark,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: GoogleFonts.getTextTheme('Work Sans').copyWith(
        bodyMedium: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        bodySmall: const TextStyle(
          color: Colors.white,
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
