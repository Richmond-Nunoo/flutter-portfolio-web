import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';

List techStacks = [
  "Flutter",
  "Node JS",
  "Laravel",
  "Express",
  "React JS",
  "Git/GitHub",
  "PHP",
  "MySQL",
  "Firebase",
];

class AboutUserSection extends StatelessWidget {
  const AboutUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthRes = MediaQuery.of(context).size.width;
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 0.75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  child: Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppData.aboutSectionImg,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                ),
              )),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text(
                          "About Me",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        AppData.aboutSectiobDescripton,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: widthRes * 0.400,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 6,
                          runSpacing: 8,
                          children: List.generate(
                            techStacks.length,
                            (index) => Chip(
                              labelPadding:
                                  const EdgeInsets.only(left: 5, right: 5),
                              padding: const EdgeInsets.all(2),
                              label: Text(
                                techStacks[index],
                                style: const TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                              side: const BorderSide(color: Colors.blueAccent),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
