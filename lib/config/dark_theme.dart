import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    fontFamily: "NotoSans",
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: const Color(0xff7e74f1),
    primaryColorDark: Colors.white,
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
