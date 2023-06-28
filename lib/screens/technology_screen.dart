import 'package:flutter/material.dart';
import 'package:flutter_portfolio/responsive/desktop/education_and_tech/technology_screen.dart';

import 'package:flutter_portfolio/responsive/mobile/education_and_tech/technology_screen.dart';
import 'package:flutter_portfolio/responsive/responsive_layout.dart';
import 'package:flutter_portfolio/responsive/tablet/education_and_tech/technology_screen.dart';

class TechScreen extends StatefulWidget {
  const TechScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TechScreen> createState() => _TechScreenState();
}

class _TechScreenState extends State<TechScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileTech(),
      desktopLayout: DesktopTech(),
      tabletLayout: TabletTech(),
    );
  }
}
