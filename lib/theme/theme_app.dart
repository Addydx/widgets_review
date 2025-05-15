import 'package:flutter/material.dart';

class ThemeApp {
  static Color primary = Colors.pink;
  static Color darckColor = Colors.black;
  static final ThemeData primaryTheme = ThemeData(
    primarySwatch: Colors.pink,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white, // Color del texto/icons
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    primaryIconTheme: const IconThemeData(color: Colors.white),
  );
}