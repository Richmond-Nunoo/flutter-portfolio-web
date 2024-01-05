import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List techStacks = [
  "Flutter",
  "Node JS",
  "Java",
  "Laravel",
  "Express",
  "React JS",
  "Git/GitHub",
  "PHP",
  "MySQL",
  "Firebase",
  "AppWrite",
  "Supabase"
];

class DeskTopScreen extends StatelessWidget {
  const DeskTopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var widthRes = MediaQuery.of(context).size.width;
    var heightRes = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              height: 370,
              width: 370,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/profile-pic.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Hello, I'm",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                const Text(
                  "John Doe",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      radius: 25,
                      onHover: (value) {
                        print(value);
                      },
                      child: Container(
                        height: 45,
                        width: widthRes * 0.09,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: const Center(
                            child: Text(
                          "Download CV",
                          style: TextStyle(fontSize: 11),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      radius: 25,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 45,
                        width: widthRes * 0.09,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Colors.black87),
                        child: const Center(
                          child: Text(
                            "Contact Info",
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/linkedin.png"))),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/github.png"))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        Column(
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
                        "assets/about-pic.png",
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
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
                                side:
                                    const BorderSide(color: Colors.blueAccent),
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
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Services",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: widthRes * 0.260,
                      height: 240,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        //   border: Border.all(),
                        boxShadow: [
                          BoxShadow(color: Colors.blueAccent, blurRadius: 10)
                        ],
                      ),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 12, top: 6),
                                child: FaIcon(FontAwesomeIcons.mobileScreen)
                                // Icon(
                                //   Icons.mobile_friendly,
                                //   size: 38,
                                // ),
                                ),
                            Text(
                              "Mobile App Development",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                                style: TextStyle(fontSize: 11),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: widthRes * 0.260,
                      height: 240,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        //   border: Border.all(),
                        boxShadow: [
                          BoxShadow(color: Colors.blueAccent, blurRadius: 10)
                        ],
                      ),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 12, top: 6),
                              child: Icon(
                                Icons.language,
                                size: 38,
                              ),
                            ),
                            Text(
                              "Website Development",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                                style: TextStyle(fontSize: 11),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: widthRes * 0.260,
                      height: 240,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        //   border: Border.all(),
                        boxShadow: [
                          BoxShadow(color: Colors.blueAccent, blurRadius: 10)
                        ],
                      ),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 12, top: 6),
                              child: Icon(
                                Icons.people_outline,
                                size: 38,
                              ),
                            ),
                            Text(
                              "Consulting Service",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                                style: TextStyle(fontSize: 11),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const Text(
          "Projects",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              const Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
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
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              const Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
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
              ),
            ],
          ),
        ),
            ],
    );
  }
}
