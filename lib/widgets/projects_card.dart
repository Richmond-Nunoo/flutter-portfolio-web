import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class ProjectCard extends StatelessWidget {
  final String projectDescription, projectTitle, projectImgUrl;

  const ProjectCard({
    super.key,
    required this.projectDescription,
    required this.projectTitle,
    required this.projectImgUrl,
  });

  @override
  Widget build(BuildContext context) {
    double widthRes = MediaQuery.of(context).size.width;
    double heightRes = MediaQuery.of(context).size.height;
    return Container(
      width: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? widthRes * 0.880
          : widthRes * 0.350,
      height: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? heightRes * 0.510
          : heightRes * 0.580,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.blueAccent, blurRadius: 2)],
      ),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(
                      projectImgUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projectTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    Text(
                      projectDescription,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.end,
                        runAlignment: WrapAlignment.end,
                        spacing: 10,
                        children: [
                          ActionChip(
                            label: const Text(
                              "Github",
                              style: TextStyle(fontSize: 11),
                            ),
                            onPressed: () {},
                          ),
                          ActionChip(
                            label: const Text(
                              "Live Demo",
                              style: TextStyle(fontSize: 11),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
