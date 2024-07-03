import 'package:flutter/material.dart';

extension ExtraAppColors on ColorScheme {
  Color get win => Colors.green.shade800;
  Color get loss => Colors.red.shade800;
}

class AppColorSchemes {
  static const dark = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb0c6ff),
      surfaceTint: Color(0xffb0c6ff),
      onPrimary: Color(0xff162e60),
      primaryContainer: Color(0xff2f4578),
      onPrimaryContainer: Color(0xffd9e2ff),
      secondary: Color(0xffadc6ff),
      onSecondary: Color(0xff102f60),
      secondaryContainer: Color(0xff2b4678),
      onSecondaryContainer: Color(0xffd8e2ff),
      tertiary: Color(0xffb1c5ff),
      onTertiary: Color(0xff172e60),
      tertiaryContainer: Color(0xff304578),
      onTertiaryContainer: Color(0xffdae2ff),
      error: Color(0xffffb3b1),
      onError: Color(0xff571d1f),
      errorContainer: Color(0xff733333),
      onErrorContainer: Color(0xffffdad8),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e8),
      onSurfaceVariant: Color(0xffc3c6cf),
      outline: Color(0xff8d9199),
      outlineVariant: Color(0xff43474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff475d92),
      background: Color(0xff121318),
      onBackground: Color(0xffe2e2e9));

  static const light = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff475d92),
    surfaceTint: Color(0xff475d92),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffd9e2ff),
    onPrimaryContainer: Color(0xff001945),
    secondary: Color(0xff445e91),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffd8e2ff),
    onSecondaryContainer: Color(0xff001a41),
    tertiary: Color(0xff485d92),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xffdae2ff),
    onTertiaryContainer: Color(0xff001947),
    error: Color(0xff904a49),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad8),
    onErrorContainer: Color(0xff3b080c),
    surface: Color(0xfff7f9ff),
    onSurface: Color(0xff181c20),
    onSurfaceVariant: Color(0xff43474e),
    outline: Color(0xff73777f),
    outlineVariant: Color(0xffc3c6cf),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2d3135),
    inversePrimary: Color(0xffb0c6ff),
    background: Color(0xfffaf8ff),
    onBackground: Color(0xff1a1b20),
  );
}
