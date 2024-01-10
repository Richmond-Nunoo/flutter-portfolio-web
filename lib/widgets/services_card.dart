import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/responsive.dart';

class ServicesCard extends StatelessWidget {
  final String serviceTitle, serviceDescription;
  final FaIcon serviceIcon;
  const ServicesCard(
      {super.key,
      required this.serviceTitle,
      required this.serviceDescription,
      required this.serviceIcon});

  @override
  Widget build(BuildContext context) {
    double widthRes = MediaQuery.of(context).size.width;
    double heightRes = MediaQuery.of(context).size.height;
    return Container(
      width: widthRes * 0.880,
      height: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? heightRes * 0.250
          : heightRes * 0.30,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.blueAccent, blurRadius: 2)],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6, top: 4),
              child: serviceIcon,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                serviceTitle,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                serviceDescription,
                style: const TextStyle(fontSize: 11),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
