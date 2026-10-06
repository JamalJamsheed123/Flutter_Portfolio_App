import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/Utils/colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  static const String emailAddress = 'jamal.jamsheed2@gmail.com';
  static const String mobileNumber = '0310 2898949';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Contact',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) * 0.9
              : Responsive.widthOfScreen(context) * 0.55,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: shadoColor, blurRadius: 14, spreadRadius: 0),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Column(
                children: const [
                  _ContactMethod(
                    label: 'Email',
                    value: ContactSection.emailAddress,
                  ),
                  Divider(height: 1),
                  _ContactMethod(
                    label: 'Mobile',
                    value: ContactSection.mobileNumber,
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

class _ContactMethod extends StatelessWidget {
  final String label;
  final String value;

  const _ContactMethod({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: textColor),
                ),
                const SizedBox(height: 3),
                SelectableText(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
