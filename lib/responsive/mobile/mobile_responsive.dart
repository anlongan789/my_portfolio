import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/dark_theme.dart';
import 'package:flutter_portfolio/config/light_theme.dart';

import 'package:get/get.dart';

import '../../screens/screens.dart';

class MobileResponsive extends StatefulWidget {
  const MobileResponsive({super.key});

  @override
  State<MobileResponsive> createState() => _MobileResponsiveState();
}

class _MobileResponsiveState extends State<MobileResponsive> {
  int currentPage = 0;
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
            text: TextSpan(
              text: "AnNg",
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontFamily: "Yellowtail",
                fontSize: 20,
              ),
              children: const [
                TextSpan(
                  text: ".",
                  style: TextStyle(
                    color: Color(0xff7e74f1),
                    fontSize: 30,
                  ),
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
                title: const Text('Education & Skills'),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
