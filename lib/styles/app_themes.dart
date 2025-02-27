import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ColorScheme get colorSchemeDark => ColorScheme.fromSeed(
      seedColor: const Color(0xFF1C1D22),
      brightness: Brightness.dark,
    );

ThemeData mainTheme() => ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: colorSchemeDark,
      appBarTheme: mainAppBarTheme,
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
          borderRadius: BorderRadius.circular(10.0),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
    );

AppBarTheme get mainAppBarTheme => const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
