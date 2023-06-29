import 'package:flutter/material.dart';

import '../../../config/constant.dart';

class TabletAbout extends StatelessWidget {
  const TabletAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "About me",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 10),
        Text(
          aboutMe,
        ),
        const SizedBox(height: 50),
        Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/rocket.gif"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
