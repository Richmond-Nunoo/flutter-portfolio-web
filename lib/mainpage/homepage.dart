import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/mainpage/desktop_screen.dart';
import 'package:portfolio/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var widthRes = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100.withOpacity(0.1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("My Portfolio"),
        elevation: 10,
        actions: [
          if (Responsive.isDesktop(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMenuItem("About", 0),
                const SizedBox(width: 10),
                _buildMenuItem("Services", 1),
                const SizedBox(width: 10),
                _buildMenuItem("Projects", 2),
                const SizedBox(width: 10),
                _buildMenuItem("Contact", 3),
              ],
            ),
          if (Responsive.isMobile(context) || Responsive.isTablet(context))
            PopupMenuButton<String>(
              icon: const Icon(Icons.menu),
              onSelected: (value) {
                _scrollToSection(value);
              },
              itemBuilder: (context) => [
                _buildPopupMenuItem("About", "about"),
                _buildPopupMenuItem("Services", "services"),
                _buildPopupMenuItem("Projects", "projects"),
                _buildPopupMenuItem("Contact", "contact"),
              ],
            ),
        ],
      ),
      body: Center(
        child: ListView(
          controller: _scrollController,
          children: [
            Responsive.isMobile(context)
                ? Padding(
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
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
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
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(25)),
                                          border: Border.all(
                                              color: Colors.black, width: 1)),
                                      child: const Center(
                                          child: Text("Download CV")),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 50,
                                      width: widthRes * 0.32,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
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
                                            image: AssetImage(
                                                "assets/linkedin.png"))),
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
                                            image: AssetImage(
                                                "assets/github.png"))),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
            Responsive.isDesktop(context)
                ? const DeskTopScreen()
                : const SizedBox.shrink(),
            Responsive.isTablet(context)
                ? Padding(
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
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Hello, I'm",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                              const Text(
                                "John Doe",
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppData.fontName,
                                ),
                              ),
                              const Text(
                                "FrontEnd Developer",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w100,
                                  fontFamily: AppData.fontName,
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
                                    onTap: () {},
                                    child: Container(
                                      height: 50,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(25)),
                                          border: Border.all(
                                              color: Colors.black, width: 1)),
                                      child: const Center(
                                          child: Text(
                                        "Download CV",
                                        style: TextStyle(
                                          fontFamily: AppData.fontName,
                                        ),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 50,
                                      width: 130,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          color: Colors.black87),
                                      child: const Center(
                                          child: Text(
                                        "Contact Info",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: AppData.fontName,
                                        ),
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
                                            image: AssetImage(
                                                "assets/linkedin.png"))),
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
                                            image: AssetImage(
                                                "assets/github.png"))),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  void _scrollToSection(String section) {
    int index = int.tryParse(section) ?? 0;
    double scrollPosition =
        index * 300.0; // Adjust this value based on your section height
    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget _buildMenuItem(String title, int index) {
    return TextButton(
      onPressed: () {
        _scrollToSection(index.toString());
      },
      child: Text(title),
    );
  }

  PopupMenuItem<String> _buildPopupMenuItem(String title, String value) {
    return PopupMenuItem(
      value: value,
      child: Text(title),
    );
  }

  Widget _buildSection(String title, Color color) {
    return Container(
      height: 300, // Adjust the height as needed
      color: color,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
