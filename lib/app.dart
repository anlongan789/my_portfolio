import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/dark_theme.dart';
import 'package:flutter_portfolio/config/light_theme.dart';
import 'package:flutter_portfolio/screens/navigation_screen.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: NavigationScreen(),
    );
  }
}
