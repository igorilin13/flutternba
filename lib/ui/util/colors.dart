import 'package:flutter/material.dart';

class AppColors {
  static const darkColorScheme = ColorScheme(
      primary: Color(0xFF083D92),
      onPrimary: Colors.white,
      secondary: Color(0xFF355D9B),
      onSecondary: Colors.white,
      brightness: Brightness.light,
      background: Color(0xFF121212),
      onBackground: Color(0xFFE0E0E0),
      surface: Color(0xFF1E1E1E),
      onSurface: Color(0xFFE0E0E0),
      tertiary: Color(0xFF627DAB),
      onTertiary: Colors.white,
      error: Colors.redAccent,
      onError: Colors.white);

  static const lightColorScheme = ColorScheme(
      primary: Color(0xFF083D92),
      onPrimary: Colors.white,
      secondary: Color(0xFF355D9B),
      onSecondary: Colors.white,
      brightness: Brightness.light,
      background: Colors.white,
      onBackground: Color(0xFF1C1B1F),
      surface: Color(0xFFF4F4F4),
      onSurface: Color(0xFF1C1B1F),
      tertiary: Color(0xFF627DAB),
      onTertiary: Colors.white,
      error: Colors.redAccent,
      onError: Colors.white);
}
