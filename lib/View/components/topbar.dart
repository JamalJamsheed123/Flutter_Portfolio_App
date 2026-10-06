import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/Utils/colors.dart';

class TopBar extends StatelessWidget {
  final Map<String, GlobalKey> sectionKeys;
  final bool useVerticalLayout;

  const TopBar({
    super.key,
    required this.sectionKeys,
    this.useVerticalLayout = false,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = useVerticalLayout || Responsive.isMobile(context);
    final navigationItems = [
      for (final entry in sectionKeys.entries)
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2,
            vertical: isMobile ? 20 : 0,
          ),
          child: TextButton(
            onPressed: () {
              if (isMobile) Navigator.pop(context);
              final targetContext = entry.value.currentContext;
              if (targetContext != null) {
                Scrollable.ensureVisible(
                  targetContext,
                  duration: Duration(milliseconds: isMobile ? 800 : 500),
                  curve: Curves.easeInOut,
                );
              }
            },
            child: Text(
              entry.key,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: textColor),
            ),
          ),
        ),
    ];

    return isMobile
        ? Column(children: navigationItems)
        : Row(children: navigationItems);
  }
}
