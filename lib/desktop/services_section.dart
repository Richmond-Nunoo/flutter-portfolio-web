import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthRes = MediaQuery.of(context).size.width;
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 0.75,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Services",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "(Some Services I provide)",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
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
                        BoxShadow(color: Colors.blueAccent, blurRadius: 2)
                      ],
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 12, top: 6),
                              child: FaIcon(FontAwesomeIcons.mobileScreen)),
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
                        BoxShadow(color: Colors.blueAccent, blurRadius: 2)
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
                        BoxShadow(color: Colors.blueAccent, blurRadius: 2)
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
    );
  }
}
