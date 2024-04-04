import 'package:flutter/material.dart';

extension ExtraAppColors on ColorScheme {
  Color get surfaceSecondary => brightness == Brightness.dark
      ? const Color(0XFF2A2A2A)
      : const Color(0xFFF7F7F7);

  Color get win => Colors.green.shade800;
  Color get loss => Colors.red.shade800;
}

class AppColorSchemes {
  static const dark = ColorScheme(
    primary: Color(0xFF083D92),
    onPrimary: Colors.white,
    secondary: Color(0xFF355D9B),
    secondaryContainer: Color(0xFF4A4458),
    onSecondary: Colors.white,
    onSecondaryContainer: Color(0xFFE8DEF8),
    brightness: Brightness.dark,
    background: Color(0xFF121212),
    onBackground: Color(0xFFE0E0E0),
    surface: Color(0xFF1E1E1E),
    surfaceVariant: Color(0xFF49454F),
    onSurfaceVariant: Color(0xFFCAC4D0),
    onSurface: Color(0xFFE0E0E0),
    tertiary: Color(0xFF627DAB),
    onTertiary: Colors.white,
    error: Colors.redAccent,
    onError: Colors.white,
    outline: Color(0xFF938F99),
  );

  static const light = ColorScheme(
    primary: Color(0xFF083D92),
    onPrimary: Colors.white,
    secondary: Color(0xFF355D9B),
    secondaryContainer: Color(0xFFE8DEF8),
    onSecondary: Colors.white,
    onSecondaryContainer: Color(0xFF1D192B),
    brightness: Brightness.light,
    background: Colors.white,
    onBackground: Color(0xFF1C1B1F),
    surface: Color(0xFFF4F4F4),
    surfaceVariant: Color(0xFFE7E0EC),
    onSurface: Color(0xFF1C1B1F),
    onSurfaceVariant: Color(0xFF49454F),
    tertiary: Color(0xFF627DAB),
    onTertiary: Colors.white,
    error: Colors.redAccent,
    onError: Colors.white,
    outline: Color(0xFF79747E),
  );
}
