import 'dart:developer';

import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                log("About me!");
              },
              child: const Text("About me"),
            ),
            const SizedBox(width: 30),
            TextButton(
              onPressed: () {
                log("About me!");
              },
              child: const Text("Technologies"),
            ),
            const SizedBox(width: 30),
            TextButton(
              onPressed: () {
                log("Projects");
              },
              child: const Text("Projects"),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dark_mode_outlined),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "Resume",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("- M Y  N A M E  I S"),
                    const SizedBox(height: 20),
                    Text(
                      "Nguyen Phung",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Rockford",
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      "Phuong An.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Rockford",
                        fontSize: 40,
                        color: Color(0xff7e74f1),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("Front-end and game developer"),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "images/git.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "images/linkedin.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                child: Stack(
                  children: [
                    RotationTransition(
                      turns: new AlwaysStoppedAnimation(-10 / 360),
                      child: Container(
                        width: 250,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Color(0xff7e74f1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                        // color: Color(0xff7e74f1),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/an.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
