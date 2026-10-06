import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/colors.dart';
import 'package:portfolio_website/Utils/typography.dart';
import 'package:portfolio_website/View/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: textColor,
          primary: textColor,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: PortfolioTypography.forWidth(1024),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: bodyTextColor,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: const Color(0xFFEDEFFF),
          labelStyle: PortfolioTypography.forWidth(1024).labelMedium,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      builder: (context, child) {
        final width = MediaQuery.sizeOf(context).width;
        return Theme(
          data: Theme.of(context).copyWith(
            textTheme: PortfolioTypography.forWidth(width),
          ),
          child: child ?? const SizedBox.shrink(),
        );
      },
      home: DeveloperPortFolio(),
    );
  }
}
