import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/Utils/colors.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  static const List<_Experience> _experiences = [
    _Experience(
      role: 'Flutter Developer | Android Developer',
      company: 'BMC Solutions · Karachi, Pakistan',
      dates: 'May 2025 – Present',
      highlights: [
        'Developed and maintained CRM, point-of-sale, planning, reporting, IoT, and pharmaceutical industry applications.',
        'Designed and developed 10+ mobile applications using Java, Kotlin, and Dart.',
        'Integrated REST APIs, Firebase services, Google Maps, biometric authentication, and payment features.',
        'Applied MVVM, Clean Architecture, Repository patterns, and offline-first local data storage.',
        'Implemented fake-location detection, voice recording, photo uploads, survey questionnaires, doctor tagging, and geofencing.',
      ],
    ),
    _Experience(
      role: 'Android Developer',
      company: 'EmergTech Private Limited · Karachi, Pakistan',
      dates: 'April 2023 – April 2025',
      highlights: [
        'Built enterprise asset and inventory management applications, including RFID- and barcode-based tracking.',
        'Developed a Warehouse Management System for asset and inventory monitoring with REST APIs, SQLite, and multi-device synchronization.',
        'Built Asset Management System apps using RFID SDKs and barcode scanning; the CV reports 50% less asset-tracking time.',
        'Integrated REST APIs, QR/barcode scanning, and RFID SDKs for Zebra, CipherLab, and Bluebird devices.',
        'Supported tablets and industrial devices; the CV reports a 35% increase in user engagement and 40% fewer bugs.',
      ],
    ),
    _Experience(
      role: 'Android Developer Intern',
      company: 'CD-Sole · Karachi, Pakistan',
      dates: 'January 2023 – March 2023',
      highlights: [
        'Contributed to the design and implementation of e-commerce shopping applications.',
        'Optimized memory usage and reduced application launch time by 20%.',
        'Worked with Android SDK components, Material Design, and REST API integrations using Retrofit.',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final width = Responsive.isMobile(context)
        ? Responsive.widthOfScreen(context) * 0.9
        : Responsive.widthOfScreen(context) * 0.76;

    return Column(
      children: [
        Text(
          'Experience',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 16),
        for (final experience in _experiences)
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: _ExperienceCard(experience: experience, width: width),
          ),
        SizedBox(
          width: width,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: shadoColor, blurRadius: 4, spreadRadius: 2),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Education',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: textColor),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'BS in Computer Science · NED University of Engineering and Technology',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'November 2018 – November 2022 · Karachi',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Experience {
  final String role;
  final String company;
  final String dates;
  final List<String> highlights;

  const _Experience({
    required this.role,
    required this.company,
    required this.dates,
    required this.highlights,
  });
}

class _ExperienceCard extends StatelessWidget {
  final _Experience experience;
  final double width;

  const _ExperienceCard({
    required this.experience,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: shadoColor, blurRadius: 4, spreadRadius: 2),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(Responsive.isMobile(context) ? 16 : 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experience.role,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 3),
              Text(
                experience.company,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: textColor),
              ),
              Text(
                experience.dates,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 8),
              for (final highlight in experience.highlights)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('•  '),
                      Expanded(
                        child: Text(
                          highlight,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
