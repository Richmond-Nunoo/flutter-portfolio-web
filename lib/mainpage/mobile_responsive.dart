import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var widthRes = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
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
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
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
                  "FrontEnd Developer",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: widthRes * 0.32,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: const Center(child: Text("Download CV")),
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: widthRes * 0.32,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Colors.black87),
                        child: const Center(
                            child: Text(
                          "Contact Info",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/linkedin.png"))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/github.png"))),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
