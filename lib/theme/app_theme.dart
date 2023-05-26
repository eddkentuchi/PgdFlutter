import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.black;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.redAccent,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary, elevation: 5),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo,
        foregroundColor: Colors.yellow,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.redAccent,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
