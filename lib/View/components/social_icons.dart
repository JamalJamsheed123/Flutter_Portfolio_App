import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 5,
      top: Responsive.isMobile(context)
          ? Responsive.heightOfScreen(context) * 0.1
          : Responsive.heightOfScreen(context) * 0.2,
      child: const SizedBox(
        height: 170,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialIconDesign(
              socialLink:
                  "https://github.com/JamalJamsheed123?tab=repositories",
              icon: Icons.code,
            ),
            SocialIconDesign(
              socialLink: "https://github.com/bmcsolutionGit12",
              icon: Icons.code,
            ),
            SocialIconDesign(
              socialLink:
                  "https://www.linkedin.com/in/muhammad-jamal-8b4b50175/",
              icon: Icons.work_outline,
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIconDesign extends StatelessWidget {
  final IconData icon;
  final String socialLink;
  const SocialIconDesign({
    super.key,
    required this.icon,
    required this.socialLink,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.transparent,
      onPressed: () {
        launchUrl(
          Uri.parse(socialLink),
        );
      },
      child: Icon(icon),
    );
  }
}
