// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:flutter_portfolio/responsive/desktop/desktop_responsive.dart';
import 'package:flutter_portfolio/responsive/mobile/mobile_responsive.dart';
import 'package:flutter_portfolio/responsive/responsive_layout.dart';
import 'package:flutter_portfolio/responsive/tablet/tablet_responsive.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileResponsive(),
      desktopLayout: DesktopResponsive(),
      tabletLayout: TabletResponsive(),
    );
  }
}
