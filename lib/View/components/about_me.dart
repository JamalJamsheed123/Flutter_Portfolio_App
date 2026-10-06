import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 24 : 48,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 960),
          child: Column(
            children: [
              Text(
                "About Me",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 12),
              Text(
                "I'm Muhammad Jamal Jamsheed, a Flutter and Android developer based in Karachi, Pakistan, with three years of hands-on experience building and shipping native and cross-platform mobile applications. Since May 2025, I have worked at BMC Solutions designing and maintaining client applications, including CRM, FinTech, WooCommerce, E-commerce, point-of-sale, planning, reporting, and pharmaceutical industry apps.\n\nMy experience spans Java, Kotlin, and Dart, with REST API integrations, offline-first data storage, Firebase services, and mobile architecture patterns. I have contributed to more than 10 mobile applications and worked with product, design, and QA teams to deliver reliable features.",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
