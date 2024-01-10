import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/widgets/projects_card.dart';

class MobileProjectsSection extends StatelessWidget {
  const MobileProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 1.18,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "(Some built Projects)",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 22,
          ),
          ProjectCard(
            projectDescription: AppData.projectDescription,
            projectImgUrl: AppData.projectOneImgUrl,
            projectTitle: AppData.projectOneTitle,
          ),
          SizedBox(
            height: 12,
          ),
          ProjectCard(
            projectDescription: AppData.projectDescription,
            projectImgUrl: AppData.projectTwoImgUrl,
            projectTitle: AppData.projectTwoTitle,
          ),
        ],
      ),
    );
  }
}
