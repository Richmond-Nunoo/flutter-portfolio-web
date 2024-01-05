import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/widgets/projects_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 0.75,
      child: const Column(
        children: [
          Text(
            "Projects",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "(Some built Projects)",
            style: TextStyle(fontSize: 14),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectCard(
                  projectDescription: AppData.projectDescription,
                  projectImgUrl: AppData.projectOneImgUrl,
                  projectTitle: AppData.projectOneTitle,
                ),
                ProjectCard(
                  projectDescription: AppData.projectDescription,
                  projectImgUrl: AppData.projectTwoImgUrl,
                  projectTitle: AppData.projectTwoTitle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
