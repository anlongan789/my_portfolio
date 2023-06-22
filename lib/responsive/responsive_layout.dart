// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;
  final Widget tabletLayout;
  const ResponsiveLayout({
    Key? key,
    required this.mobileLayout,
    required this.desktopLayout,
    required this.tabletLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 550) {
          return mobileLayout;
        } else if (constraints.maxWidth < 1100) {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
