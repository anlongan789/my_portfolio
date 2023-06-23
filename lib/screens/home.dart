// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_portfolio/responsive/desktop/home_desktop.dart';
import 'package:flutter_portfolio/responsive/mobile/mobile_responsive.dart';
import 'package:flutter_portfolio/responsive/responsive_layout.dart';
import 'package:flutter_portfolio/responsive/tablet/tablet_responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileLayout: MobileResponsive(),
      desktopLayout: HomeDesktop(),
      tabletLayout: TabletResponsive(),
    );
  }
}
