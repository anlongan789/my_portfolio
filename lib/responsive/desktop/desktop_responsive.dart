import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config/dark_theme.dart';
import '../../config/light_theme.dart';
import '../../screens/screens.dart';

class DesktopResponsive extends StatefulWidget {
  const DesktopResponsive({super.key});

  @override
  State<DesktopResponsive> createState() => _DesktopResponsiveState();
}

class _DesktopResponsiveState extends State<DesktopResponsive> {
  int currentPage = 0;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  currentPage = 0;
                });
              },
              child: RichText(
                text: TextSpan(
                  text: "AnNg",
                  style: TextStyle(
                    fontFamily: "Yellowtail",
                    fontSize: 20,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  children: const [
                    TextSpan(
                      text: ".",
                      style: TextStyle(color: Color(0xff7e74f1), fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              child: const Text("About me"),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
              child: const Text("Education & Skills"),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              child: const Text("Projects"),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              child: const Text("Contact me"),
            )
          ],
        ),
        actions: [
          !isDark
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isDark = true;
                    });
                    Get.changeTheme(darkTheme());
                  },
                  icon: const Icon(Icons.dark_mode_outlined),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isDark = false;
                    });
                    Get.changeTheme(lightTheme());
                  },
                  icon: const Icon(Icons.light_mode_outlined),
                ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 20),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    switch (currentPage) {
      case 0:
        return const HomeScreen();
      case 1:
        return const AboutScreen();
      case 2:
        return const TechScreen();
      case 3:
        return const ProjectScreen();
      case 4:
        return const ContactScreen();
      default:
        return const Center(
          child: Text("Error!"),
        );
    }
  }
}
