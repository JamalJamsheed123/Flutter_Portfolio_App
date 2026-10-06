import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/Utils/colors.dart';
import 'package:portfolio_website/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentProject extends StatelessWidget {
  const RecentProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Selected Projects",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20 : 32,
          ),
          child: Text(
            'The CV lists Java, Kotlin, Dart, Android and Flutter, Jetpack Compose, '
            'MVVM, GetX, REST APIs, Retrofit, SQLite, and Sqflite across the client app portfolio.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            for (final project in projects) ProjectCard(projectModel: project),
          ],
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectCard({super.key, required this.projectModel});

  Future<void> _openProject(BuildContext context) async {
    final opened = await launchUrl(
      Uri.parse(projectModel.playStoreUrl),
      mode: LaunchMode.externalApplication,
    );
    if (!opened && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Could not open this Play Store listing.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(color: shadoColor, blurRadius: 14, spreadRadius: 0),
        ], borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) - 32
              : Responsive.widthOfScreen(context) < 900
                  ? Responsive.widthOfScreen(context) * 0.44
                  : 320,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  projectModel.imgURL,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                projectModel.projectName,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  projectModel.description,
                  maxLines: 5,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 4,
                  runSpacing: 0,
                  children: [
                    for (final technology in projectModel.technologies)
                      Chip(
                        label: Text(
                          technology,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide.none,
                        backgroundColor: const Color(0xFFEDEFFF),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 6,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                  onPressed: () => _openProject(context),
                  child: const Text(
                    "Check In / Check Out",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
