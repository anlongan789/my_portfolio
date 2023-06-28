import 'package:flutter/material.dart';
import 'package:flutter_portfolio/responsive/desktop/home/home_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/home/home_screen.dart';
import 'package:flutter_portfolio/responsive/tablet/home/home_screen.dart';

import '../responsive/responsive_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileHome(),
      desktopLayout: DesktopHome(),
      tabletLayout: TabletHome(),
    );
  }
}
