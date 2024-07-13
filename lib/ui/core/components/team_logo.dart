import 'package:flutter/material.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/ui/core/asset_paths.dart';
import 'package:flutternba/ui/core/extensions.dart';

enum NbaTeamLogoSize {
  xSmall(24, 10),
  small(28, 10),
  medium(48, 12),
  large(128, 28);

  final double backgroundSize;
  final double textSize;

  const NbaTeamLogoSize(this.backgroundSize, this.textSize);
}

class NbaTeamLogo extends StatelessWidget {
  final int teamId;
  final String? name;
  final String? color;
  final NbaTeamLogoSize size;
  final Color? _parsedColor;

  NbaTeamLogo({
    super.key,
    required this.teamId,
    required this.name,
    required this.color,
    required this.size,
  }) : _parsedColor = color != null ? _parseColor(color) : null;

  const NbaTeamLogo.imageOnly({
    super.key,
    required this.teamId,
    required this.size,
  })  : name = null,
        color = null,
        _parsedColor = null;

  static Color _parseColor(String color) {
    try {
      return Color(int.parse(color.substring(1), radix: 16));
    } catch (e) {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppConfig.showTeamLogos
        ? _buildRealLogo(context)
        : _buildTextLogo(context);
  }

  Widget _buildRealLogo(BuildContext context) {
    final cachedSize = size.backgroundSize.toPx(context).round();
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Image.asset(
      AssetPaths.teamLogo(teamId, isDarkTheme),
      width: size.backgroundSize,
      height: size.backgroundSize,
      cacheHeight: cachedSize,
      cacheWidth: cachedSize,
      fit: BoxFit.contain,
    );
  }

  Widget _buildTextLogo(BuildContext context) {
    if (name == null || _parsedColor == null) {
      return const SizedBox.shrink();
    }

    return Container(
      width: size.backgroundSize,
      height: size.backgroundSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _parsedColor,
      ),
      child: Center(
        child: Text(
          name!,
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
