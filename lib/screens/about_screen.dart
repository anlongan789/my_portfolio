import 'package:flutter/material.dart';
import 'package:flutter_portfolio/responsive/desktop/about/about_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/about/about_screen.dart';
import 'package:flutter_portfolio/responsive/tablet/about/about_screen.dart';

import '../responsive/responsive_layout.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileAbout(),
      desktopLayout: DesktopAbout(),
      tabletLayout: TabletAbout(),
    );
  }
}
