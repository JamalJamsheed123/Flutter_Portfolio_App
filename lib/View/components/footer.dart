import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '© Copyright 2026',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 4),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 16 : 0,
          ),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 4,
            children: [
              Text(
                'Built with ❤ by',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'Muhammad Jamal Jamsheed',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
