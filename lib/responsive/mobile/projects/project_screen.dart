import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/constant.dart';

class MobileProject extends StatefulWidget {
  const MobileProject({super.key});

  @override
  State<MobileProject> createState() => _MobileProjectState();
}

class _MobileProjectState extends State<MobileProject> {
  List<ProjectModel> projects = ProjectModel.projects;
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
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () async {
                      if (await canLaunchUrl(Uri.parse(projects[index].link))) {
                        await launchUrl(
                          Uri.parse(projects[index].link),
                          mode: LaunchMode.inAppWebView,
                        );
                      } else {
                        throw Exception("can not launch linkedIn !");
                      }
                    },
                    onHover: (val) {
                      if (val) {
                        setState(() {
                          projects[index].isHover = val;
                        });
                      } else {
                        setState(() {
                          projects[index].isHover = val;
                        });
                      }
                    },
                    child: Expanded(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease,
                        width: double.infinity,
                        height: 100,
                        padding:
                            EdgeInsets.all(projects[index].isHover ? 0 : 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          color: projects[index].isHover
                              ? Theme.of(context).primaryColor.withAlpha(400)
                              : Colors.grey,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.ease,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        projects[index].projectImg),
                                    fit: BoxFit.contain,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      projects[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: projects[index].isHover
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.black),
                                    ),
                                    Text(
                                      "Technologies: ${projects[index].technologies}",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
