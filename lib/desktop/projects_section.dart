import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthRes = MediaQuery.of(context).size.width;
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 0.75,
      child: Column(
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
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: widthRes * 0.350,
                  height: heightRes * 0.540,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    //   border: Border.all(),
                    boxShadow: [
                      BoxShadow(color: Colors.blueAccent, blurRadius: 10)
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            width: widthRes * 0.360,
                            height: heightRes * 0.500,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/project-1.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      Expanded(
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
                                const Text(
                                  "Project 1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
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
                ),
                Container(
                  width: widthRes * 0.350,
                  height: heightRes * 0.540,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    //   border: Border.all(),
                    boxShadow: [
                      BoxShadow(color: Colors.blueAccent, blurRadius: 10)
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            width: widthRes * 0.360,
                            height: heightRes * 0.500,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/project-2.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      Expanded(
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
                                const Text(
                                  "Project 1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
