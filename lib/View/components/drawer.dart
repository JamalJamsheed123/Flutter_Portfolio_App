import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/colors.dart';
import 'package:portfolio_website/View/components/topbar.dart';

class MyDrawer extends StatelessWidget {
  final Map<String, GlobalKey> sectionKeys;
  const MyDrawer({super.key, required this.sectionKeys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: textColor,
          ),
        ),
      ),
      body: Center(
        child: TopBar(
          sectionKeys: sectionKeys,
          useVerticalLayout: true,
        ),
      ),
    );
  }
}
