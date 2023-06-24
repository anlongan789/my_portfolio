import 'package:flutter/material.dart';

import '../../../config/constant.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "About me",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          aboutMe,
          textAlign: TextAlign.center,
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/rocket.gif"), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
