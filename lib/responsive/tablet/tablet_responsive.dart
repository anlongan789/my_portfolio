import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/responsive/mobile/about/about_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/contact/contact_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/education_and_tech/technology_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/home/home_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/projects/project_screen.dart';

class TabletResponsive extends StatefulWidget {
  const TabletResponsive({super.key});

  @override
  State<TabletResponsive> createState() => _TabletResponsiveState();
}

class _TabletResponsiveState extends State<TabletResponsive> {
  int currentPage = 1;
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
                text: const TextSpan(
                  text: "AnNg",
                  style: TextStyle(
                    fontFamily: "Yellowtail",
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
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
              child: const Text("Education"),
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
                      ThemeMode.dark;
                      isDark = !isDark;
                    });
                    print("$isDark");
                  },
                  icon: const Icon(Icons.dark_mode_outlined),
                )
              : IconButton(
                  onPressed: () {
                    ThemeData.light();
                    setState(() {
                      ThemeMode.light;
                      isDark = !isDark;
                    });
                    print("$isDark");
                  },
                  icon: const Icon(Icons.light_mode_outlined),
                ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    switch (currentPage) {
      case 0:
        return const MobileHome();
      case 1:
        return const MobileAbout();
      case 2:
        return const MobileTech();
      case 3:
        return const MobileProject();
      case 4:
        return const MobileContact();
      default:
        return const Center(
          child: Text("Error!"),
        );
    }
  }
}
