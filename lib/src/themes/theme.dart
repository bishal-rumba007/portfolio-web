import 'package:flutter/material.dart';
import 'package:portfolio_web_app/src/themes/color.dart';

class AppTheme {
  ThemeData lightMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      background: Colors.white,
      primary: AppColor.purpleColor,
      secondary: AppColor.roseColor,
    ),
  );

  ThemeData darkMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      background: AppColor.darkColor,
      primary: AppColor.purpleColor,
      secondary: AppColor.roseColor,
    ),
  );
}
