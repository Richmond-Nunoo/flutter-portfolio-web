import 'package:flutter/material.dart';

import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/widgets/services_card.dart';

class MobileServicesSection extends StatelessWidget {
  const MobileServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    double heightRes = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightRes * 1.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
          const SizedBox(
            height: 8,
          ),
          ServicesCard(
            serviceTitle: 'Mobile App Development',
            serviceDescription: AppData.servicesDescription,
            serviceIcon: AppData.mobileServiceIcon,
          ),
          const SizedBox(
            height: 15,
          ),
          ServicesCard(
            serviceTitle: 'Website Development',
            serviceDescription: AppData.servicesDescription,
            serviceIcon: AppData.mobileServiceIcon2,
          ),
          const SizedBox(
            height: 15,
          ),
          ServicesCard(
            serviceTitle: 'Consulting Services',
            serviceDescription: AppData.servicesDescription,
            serviceIcon: AppData.mobileServiceIcon3,
          ),
        ],
      ),
    );
  }
}
