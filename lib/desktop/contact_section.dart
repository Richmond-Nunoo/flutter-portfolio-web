import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthRes = MediaQuery.of(context).size.width;
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 0.75,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(28.0),
            child: Text(
              "Contacts",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Lets Work Together",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deserunt quisquam voluptatibus debitis aperiam ratione. Officia, suscipit iure, tenetur eum consequatur, consequuntur omnis accusamus odit quod pariatur excepturi architecto veniam. Soluta modi dignissimos libero blanditiis at saepe doloribus temporibus illo facilis dolorem, aliquam obcaecati accusamus nihil laboriosam, esse vel. Quod, vitae.",
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        label: const Text(
                          "Send Me An email",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            maximumSize: MaterialStateProperty.all(
                                Size(widthRes * 0.390, 50)),
                            minimumSize: MaterialStateProperty.all(
                                Size(widthRes * 0.390, 50)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                      )
                    ],
                  ),
                ),
                const Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Follow in Social Media",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.squareXTwitter),
                          SizedBox(width: 10),
                          FaIcon(FontAwesomeIcons.youtube),
                          SizedBox(width: 10),
                          FaIcon(FontAwesomeIcons.instagram),
                          SizedBox(width: 10),
                          FaIcon(FontAwesomeIcons.whatsapp),
                          SizedBox(width: 10),
                          FaIcon(FontAwesomeIcons.medium),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Email",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text("johndoe@gmail.com"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Loc:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text("Planet Pluto"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Phone",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text("+1 233 234 324"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}