import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/responsive/mobile/about/about_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/contact/contact_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/education_and_tech/technology_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/home/home_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/projects/project_screen.dart';

class MobileResponsive extends StatefulWidget {
  const MobileResponsive({super.key});

  @override
  State<MobileResponsive> createState() => _MobileResponsiveState();
}

class _MobileResponsiveState extends State<MobileResponsive> {
  int currentPage = 1;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InkWell(
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
                  style: TextStyle(color: Color(0xff7e74f1), fontSize: 30),
                )
              ],
            ),
          ),
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
      drawer: SizedBox(
        width: 200,
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: const EdgeInsets.symmetric(vertical: 20),
            children: [
              ListTile(
                title: const Text('About me'),
                onTap: () {
                  setState(() {
                    currentPage = 1;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Education & Technologies'),
                onTap: () {
                  setState(() {
                    currentPage = 2;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Projects'),
                onTap: () {
                  setState(() {
                    currentPage = 3;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Contact me'),
                onTap: () {
                  setState(() {
                    currentPage = 4;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
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
