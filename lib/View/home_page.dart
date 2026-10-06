import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/Utils/colors.dart';
import 'package:portfolio_website/View/components/about_me.dart';
import 'package:portfolio_website/View/components/drawer.dart';
import 'package:portfolio_website/View/components/prfile_and_intro.dart';
import 'package:portfolio_website/View/components/recent_project.dart';
import 'package:portfolio_website/View/components/social_icons.dart';
import 'package:portfolio_website/View/components/top_skill.dart';
import 'package:portfolio_website/View/components/contact_form.dart';
import 'package:portfolio_website/View/components/footer.dart';
import 'package:portfolio_website/View/components/topbar.dart';

class DeveloperPortFolio extends StatelessWidget {
  DeveloperPortFolio({super.key});
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final Map<String, GlobalKey> _sectionKeys = {
    'About': GlobalKey(),
    'Skills': GlobalKey(),
    // 'Experience': GlobalKey(),
    'Projects': GlobalKey(),
    'Contact': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Muhammad Jamal",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        toolbarHeight: 70,
        actions: [
          Responsive.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: IconButton(
                    onPressed: () {
                      _globalKey.currentState!.openEndDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: textColor,
                      size: 28,
                    ),
                  ),
                )
              : TopBar(
                  sectionKeys: _sectionKeys,
                ),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? MyDrawer(sectionKeys: _sectionKeys)
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            // for Body parts
            SingleChildScrollView(
              child: Column(
                children: [
                  const ProfileAndIntro(),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 0),
                  KeyedSubtree(
                    key: _sectionKeys['About'],
                    child: const AboutMe(),
                  ),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 64),
                  KeyedSubtree(
                    key: _sectionKeys['Skills'],
                    child: const TopSkills(),
                  ),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 64),
                  // KeyedSubtree(
                  //   key: _sectionKeys['Experience'],
                  //   child: const ExperienceSection(),
                  // ),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 64),
                  KeyedSubtree(
                    key: _sectionKeys['Projects'],
                    child: const RecentProject(),
                  ),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 64),
                  KeyedSubtree(
                    key: _sectionKeys['Contact'],
                    child: const ContactSection(),
                  ),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 64),
                  const Footer(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            const SocialIcons()
          ],
        ),
      ),
    );
  }
}
