import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData mainTheme() => ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      appBarTheme: mainAppBarTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

AppBarTheme get mainAppBarTheme => const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
