import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/widgets/breath.dart';

class MobileHomePage extends StatelessWidget {
  final Function() tapContactInfoCallback;
  final Function() linkedInTapCallBack;
  final Function() githubTapCallBack;
  final Function() getCvLink;
  const MobileHomePage({
    super.key,
    required this.tapContactInfoCallback,
    required this.linkedInTapCallBack,
    required this.githubTapCallBack,
    required this.getCvLink,
  });

  @override
  Widget build(BuildContext context) {
    double widthRes = MediaQuery.of(context).size.width;
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 0.75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfilePicAnimation(
            shadowColor: Colors.blueAccent,
            child: Container(
              // height: heightRes * 0.710,
              // width: widthRes * 0.670,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppData.profileImageUrl),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Hello, I'm",
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              const Text(
                "John Doe",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: getCvLink,
                    radius: 25,
                    child: Container(
                      height: heightRes * 0.05,
                      width: widthRes * 0.28,
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
                    onTap: tapContactInfoCallback,
                    radius: 25,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: heightRes * 0.05,
                      width: widthRes * 0.28,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: linkedInTapCallBack,
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
                    onTap: githubTapCallBack,
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
    );
  }
}
