import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NbaSystemUiOverlay extends StatelessWidget {
  final Color color;
  final Widget child;

  const NbaSystemUiOverlay({
    super.key,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: _createOverlayStyle(), child: child);
  }

  SystemUiOverlayStyle _createOverlayStyle() {
    final brightness = ThemeData.estimateBrightnessForColor(color);
    final SystemUiOverlayStyle style = brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;

    return SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: style.statusBarBrightness,
      statusBarIconBrightness: style.statusBarIconBrightness,
      systemStatusBarContrastEnforced: style.systemStatusBarContrastEnforced,
    );
  }
}
