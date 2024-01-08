import 'package:flutter/material.dart';
import 'package:portfolio/desktop/about_section.dart';
import 'package:portfolio/desktop/contact_section.dart';
import 'package:portfolio/desktop/home_section.dart';
import 'package:portfolio/desktop/projects_section.dart';
import 'package:portfolio/desktop/services_section.dart';
import 'package:portfolio/mobile/mobile_about_section.dart';
import 'package:portfolio/mobile/mobile_contact_section.dart';
import 'package:portfolio/mobile/mobile_home_Section.dart';
import 'package:portfolio/mobile/mobile_projects_section.dart';
import 'package:portfolio/mobile/mobile_services_Section.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final Uri _linkedInUrl = Uri.parse('https://www.linkedin.com/login');
  final Uri _githubUrl = Uri.parse('https://github.com/login');
  final String _cvLink = "assets/resume-example.pdf";
  double barWidth = 0;
  int hoveredIndex = -1;
  int activeSectionIndex = -1; // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        shadowColor: Colors.blueAccent,
        backgroundColor: Colors.blue.shade100,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Responsive.isDesktop(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMenuItem("Home", 0),
                  const SizedBox(width: 10),
                  _buildMenuItem("About", 1),
                  const SizedBox(width: 10),
                  _buildMenuItem("Services", 2),
                  const SizedBox(width: 10),
                  _buildMenuItem("Projects", 3),
                  const SizedBox(width: 10),
                  _buildMenuItem("Contact", 4),
                ],
              ),
          ],
        ),
        actions: [
          if (Responsive.isMobile(context) || Responsive.isTablet(context))
            PopupMenuButton<String>(
              icon: const Icon(Icons.menu),
              onSelected: (value) {
                _scrollToSection(int.parse(value));
              },
              itemBuilder: (context) => [
                _buildPopupMenuItem("Home", 0),
                _buildPopupMenuItem("About", 1),
                _buildPopupMenuItem("Services", 2),
                _buildPopupMenuItem("Projects", 3),
                _buildPopupMenuItem("Contact", 4),
              ],
            ),
        ],
        elevation: 10,
      ),
      body: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: _scrollController,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MobileHomePage(
                    tapContactInfoCallback: () {
                      setState(() {
                        _scrollToSection(4);
                        activeSectionIndex = 4; // Update activeSectionIndex
                      });
                    },
                    linkedInTapCallBack: () async {
                      await _launchLinkedInUrl();
                    },
                    githubTapCallBack: () async {
                      await _launchGitHubUrl();
                    },
                    getCvLink: () {
                      html.window.open(_cvLink, "text");
                    },
                  ),
                  // Section 0: About
                  const MobileAboutUserSection(),

                  // Section 1: Services
                  // _buildSection("Projects", Colors.orange),
                  const MobileServicesSection(),

                  // Section 2: Projects
                  const MobileProjectsSection(),

                  // Section 3: Contact
                  const MobileContactSection()
                ],
              ),
            )
          : SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  HomeSection(
                    tapContactInfoCallback: () {
                      setState(() {
                        _scrollToSection(4);
                        activeSectionIndex = 4; // Update activeSectionIndex
                      });
                    },
                    linkedInTapCallBack: () async {
                      await _launchLinkedInUrl();
                    },
                    githubTapCallBack: () async {
                      await _launchGitHubUrl();
                    },
                    getCvLink: () {
                      html.window.open(_cvLink, "text");
                    },
                  ),
                  const AboutUserSection(),
                  const ServicesSection(),
                  const ProjectsSection(),
                  const ContactSection(),
                ],
              ),
            ),
    );
  }

  Future<void> _launchLinkedInUrl() async {
    if (!await launchUrl(_linkedInUrl)) {
      print("Cant launch");
    }
  }

  Future<void> _launchGitHubUrl() async {
    if (!await launchUrl(_githubUrl)) {
      print("Cant launch");
    }
  }

  void _scrollToSection(int section) {
    double heightRes = MediaQuery.of(context).size.height;
    double sectionHeight = heightRes * 0.75;
    //   int index = int.tryParse(section) ?? 0;
    double scrollPosition = section *
        sectionHeight; // Adjust this value based on your section height
    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget _buildMenuItem(String title, int index) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          hoveredIndex = index;
        });
      },
      onHover: (event) {
        // Set the width of the bar under the text when hovering
        setState(() {
          // You can adjust the width as needed
          barWidth = 50.0;
          hoveredIndex = index;
        });
      },
      onExit: (event) {
        // Reset the width when not hovering
        setState(() {
          barWidth = 0.0;
          hoveredIndex = -1;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              _scrollToSection(index);
              setState(() {
                activeSectionIndex = index; // Update activeSectionIndex
              });
            },
            child: Text(
              title,
              style: TextStyle(
                color: activeSectionIndex == index
                    ? Colors.blue
                    : hoveredIndex == index
                        ? Colors.blue
                        : Colors.black,
              ),
            ),
          ),
          Container(
            height: 2.0,
            width: barWidth,
            color: hoveredIndex == index ? Colors.blue : Colors.transparent,
            margin: const EdgeInsets.only(top: 8.0),
          ),
        ],
      ),
    );
  }

  PopupMenuItem<String> _buildPopupMenuItem(String title, int index) {
    return PopupMenuItem(
      child: Column(
        children: [
          Text(title),
        ],
      ),
      onTap: () {
        _scrollToSection(index);
      },
    );
  }
}
