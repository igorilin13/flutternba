import 'package:flutter/material.dart';

enum NbaTeamLogoSize {
  medium(48, 12),
  large(128, 28);

  final double backgroundSize;
  final double textSize;

  const NbaTeamLogoSize(this.backgroundSize, this.textSize);
}

class NbaTeamLogo extends StatelessWidget {
  final String name;
  final String color;
  final NbaTeamLogoSize size;
  final Color _parsedColor;

  NbaTeamLogo({
    super.key,
    required this.name,
    required this.color,
    required this.size,
  }) : _parsedColor = _parseColor(color);

  static Color _parseColor(String color) {
    try {
      return Color(int.parse(color.substring(1), radix: 16));
    } catch (e) {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.backgroundSize,
      height: size.backgroundSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _parsedColor,
      ),
      child: Center(
        child: Text(
          name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.textSize,
              ),
        ),
      ),
    );
  }
}
