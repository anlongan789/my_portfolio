import 'package:flutter/material.dart';

class MobileProject extends StatefulWidget {
  const MobileProject({super.key});

  @override
  State<MobileProject> createState() => _MobileProjectState();
}

class _MobileProjectState extends State<MobileProject> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Projects",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: () {
            print('object');
          },
          onHover: (val) {
            if (val) {
              setState(() {
                isHover = val;
              });
            } else {
              setState(() {
                isHover = val;
              });
            }
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.ease,
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(isHover ? 0 : 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
              color: isHover ? Colors.blueGrey : Colors.grey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/logo1.png"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
