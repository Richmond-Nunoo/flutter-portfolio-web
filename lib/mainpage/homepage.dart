import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("My Portfolio"),
        elevation: 10,
        actions: [
          if (Responsive.isDesktop(context))
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("About"),
                  SizedBox(width: 10),
                  Text("Experience"),
                  SizedBox(width: 10),
                  Text("Projects"),
                  SizedBox(width: 10),
                  Text("Contacts"),
                  SizedBox(width: 10)
                ]),
          if (Responsive.isMobile(context))
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          if (Responsive.isTablet(context))
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            if (Responsive.isMobile(context)) const Text("Mobile"),
            if (Responsive.isDesktop(context)) const Text("Desktop"),
            if (Responsive.isTablet(context)) const Text("Tablet"),
          ],
        ),
      ),
    );
  }
}
