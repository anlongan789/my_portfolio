import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/constant.dart';

class TabletAbout extends StatelessWidget {
  const TabletAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("About me"),
        const SizedBox(height: 20),
        Text(aboutMe),
      ],
    );
  }
}
