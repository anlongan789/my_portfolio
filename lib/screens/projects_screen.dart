import 'package:flutter/material.dart';

import 'package:flutter_portfolio/responsive/desktop/projects/project_screen.dart';
import 'package:flutter_portfolio/responsive/mobile/projects/project_screen.dart';
import 'package:flutter_portfolio/responsive/responsive_layout.dart';
import 'package:flutter_portfolio/responsive/tablet/projects/project_screen.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileProject(),
      desktopLayout: DesktopProject(),
      tabletLayout: TabletProject(),
    );
  }
}
