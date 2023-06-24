import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: "NotoSans",
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color(0xff7e74f1),
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: Color(0xff7e74f1),
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: Color(0xff7e74f1),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
