import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/Utils/colors.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({super.key});

  static const Map<String, List<String>> skillCategories = {
    'Mobile development': [
      'Flutter',
      'Android SDK',
      'Android Studio',
      'Android Studio Profiler',
      'Jetpack Compose',
      'Material Design',
      'Google Play Console',
      'XML',
    ],
    'Languages and foundations': [
      'Dart',
      'Java',
      'Kotlin',
      'OOP',
      'Kotlin Coroutines',
      'Dispatchers',
      'Scope Functions',
      'Jetpack Libraries',
    ],
    'Architecture and state': [
      'GetX',
      'Bloc',
      'setState',
      'Riverpool',
      'MVP',
      'MVVM',
      'Clean Architecture',
      'Repository Pattern',
      'SOLID',
      'Singleton',
      'Dependency Injection',
      'Controllers',
      'Widgets',
    ],
    'APIs and integrations': [
      'RESTful APIs',
      'Retrofit',
      'Dio',
      'OkHttp',
      'Android Networking API',
      'HTTPS',
      'JSON',
      'Google Play Services',
      'Google Maps',
      'Mapbox',
      'Firebase',
      'Biometric / Fingerprint',
      'Payment Integration',
      'RFID',
      'Barcode / QR Scanning',
      'Google ML Kit',
      'ZXing',
      'Geofencing',
      'Crashlytics',
      'Analytics',
      'Push Notifications',
    ],
    'Data and storage': [
      'SQLite',
      'Sqflite',
      'Room Persistence Library',
      'Hive',
    ],
    'Tools and collaboration': [
      'FVM',
      'Gradle',
      'Jira',
      'Linear',
      'SourceTree',
      'GitHub',
      'Teamwork',
      'Critical Thinking',
      'Problem-solving',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Skills",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: Responsive.isMobile(context) ? 12 : 20,
          runSpacing: Responsive.isMobile(context) ? 12 : 20,
          children: [
            for (final category in skillCategories.entries)
              _SkillCategoryCard(
                title: category.key,
                skills: category.value,
                width: Responsive.isMobile(context)
                    ? Responsive.widthOfScreen(context) - 32
                    : Responsive.widthOfScreen(context) < 900
                        ? Responsive.widthOfScreen(context) * 0.44
                        : 420,
              ),
          ],
        ),
      ],
    );
  }
}

class _SkillCategoryCard extends StatelessWidget {
  final String title;
  final List<String> skills;
  final double width;

  const _SkillCategoryCard({
    required this.title,
    required this.skills,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: shadoColor,
            blurRadius: 14,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: SizedBox(
        width: width,
        child: Padding(
          padding: EdgeInsets.all(Responsive.isMobile(context) ? 16 : 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: textColor),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                runSpacing: 0,
                children: [
                  for (final skill in skills)
                    Chip(
                      label: Text(
                        skill,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide.none,
                      backgroundColor: const Color(0xFFEDEFFF),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
