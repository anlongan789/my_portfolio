import 'package:flutter/material.dart';
import 'package:flutter_portfolio/responsive/desktop/contact/contact_screen.dart';

import 'package:flutter_portfolio/responsive/mobile/contact/contact_screen.dart';
import 'package:flutter_portfolio/responsive/responsive_layout.dart';
import 'package:flutter_portfolio/responsive/tablet/contact/contact_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileContact(),
      desktopLayout: DesktopContact(),
      tabletLayout: TabletContact(),
    );
  }
}
