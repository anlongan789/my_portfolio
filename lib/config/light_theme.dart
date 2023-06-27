import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: "NotoSans",
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: const Color(0xff7e74f1),
    primaryColorDark: Colors.black,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
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
