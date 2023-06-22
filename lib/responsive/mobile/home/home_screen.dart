import 'package:flutter/material.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Stack(
              children: [
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(-10 / 360),
                  child: Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                        color: const Color(0xff7e74f1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Container(
                  width: 200,
                  height: 250,
                  decoration: BoxDecoration(
                    // color: Color(0xff7e74f1),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("images/an.png"), fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("- M Y  N A M E  I S"),
              const SizedBox(height: 10),
              const Text(
                "Nguyen Phung",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Text(
                "Phuong An.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff7e74f1),
                ),
              ),
              const SizedBox(height: 10),
              const Text("Front-end and game developer"),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "images/git.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "images/linkedin.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  ThemeData.fallback();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff7e74f1),
                    // border: Border.all(color: Colors.grey, width: 1.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      "Resume",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
