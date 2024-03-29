import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/desktop/about_section.dart';

class MobileAboutUserSection extends StatelessWidget {
  const MobileAboutUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 0.75,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                height: heightRes * 0.250,
                width: heightRes * 0.250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppData.aboutSectionImg,
                    ),
                    //  fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    AppData.aboutSectiobDescripton,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 5,
                    runSpacing: 5,
                    children: List.generate(
                      techStacks.length,
                      (index) => Chip(
                        labelPadding: const EdgeInsets.only(left: 5, right: 5),
                        padding: const EdgeInsets.all(2),
                        label: Text(
                          techStacks[index],
                          style: const TextStyle(
                              fontSize: 10, color: Colors.black),
                        ),
                        side: const BorderSide(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
