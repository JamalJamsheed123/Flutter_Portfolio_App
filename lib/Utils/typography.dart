import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/colors.dart';

abstract final class PortfolioTypography {
  static TextTheme forWidth(double width) {
    final scale = ((width - 600) / 840).clamp(0.0, 1.0).toDouble();

    return TextTheme(
      displayLarge:
          _style(40 + 12 * scale, FontWeight.w700, bodyTextColor, 1.15),
      headlineLarge:
          _style(30 + 10 * scale, FontWeight.w700, bodyTextColor, 1.2),
      headlineMedium:
          _style(25 + 7 * scale, FontWeight.w700, bodyTextColor, 1.25),
      headlineSmall:
          _style(21 + 3 * scale, FontWeight.w700, bodyTextColor, 1.25),
      titleLarge: _style(18 + 2 * scale, FontWeight.w600, bodyTextColor, 1.35),
      titleMedium: _style(15 + 1 * scale, FontWeight.w600, bodyTextColor, 1.4),
      titleSmall:
          _style(13 + 1 * scale, FontWeight.w600, secondaryTextColor, 1.4),
      bodyLarge: _style(16 + 1 * scale, FontWeight.w400, bodyTextColor, 1.65),
      bodyMedium: _style(14 + 1 * scale, FontWeight.w400, bodyTextColor, 1.55),
      bodySmall:
          _style(12 + 1 * scale, FontWeight.w400, secondaryTextColor, 1.45),
      labelLarge: _style(14 + 1 * scale, FontWeight.w600, textColor, 1.25),
      labelMedium:
          _style(12 + 1 * scale, FontWeight.w500, secondaryTextColor, 1.3),
    );
  }

  static TextStyle _style(
    double fontSize,
    FontWeight fontWeight,
    Color color,
    double height,
  ) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
    );
  }
}
