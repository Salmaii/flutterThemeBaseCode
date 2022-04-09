import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color.fromARGB(255, 44, 44, 44);
  static const primaryLight = Color(0xff484848);
  static const primaryDark = Color(0xff000000);
  static const textLight = Color(0xffffffff);
  static const text = Color(0xffffffff);
  static const accent = Color(0xff1c313a);
  static const secondary = Color(0xff455a64);
  static const divider = Color(0xff718792);
}

TextStyle get _headline1 => const TextStyle(
  fontSize: 28,
  fontFamily: 'nunito',
  fontWeight: FontWeight.w600,
  color: AppColors.text,
);

OutlinedButtonThemeData get _outlineButtonTheme => OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    side: const BorderSide(color: AppColors.primary)
  ),
);

ThemeData getTheme() {
  final theme = ThemeData.light().copyWith(
    outlinedButtonTheme: _outlineButtonTheme,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primary,
      onPrimary: AppColors.textLight,
      primaryContainer: AppColors.primaryDark,
      onPrimaryContainer: AppColors.text,
      secondary: AppColors.secondary,
      tertiary: AppColors.accent,
      onTertiary: AppColors.textLight
    )
  );
  return theme;
}