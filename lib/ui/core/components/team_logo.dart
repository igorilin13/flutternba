import 'package:flutter/material.dart';
import 'package:flutternba/ui/core/asset_paths.dart';
import 'package:flutternba/ui/core/extensions.dart';

class NbaTeamLogo extends StatelessWidget {
  final int teamId;
  final double? size;
  final BoxFit fit;

  const NbaTeamLogo({
    super.key,
    required this.teamId,
    this.size,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    final cachedSize = size?.toPx(context).round();
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Image.asset(
      AssetPaths.teamLogo(teamId, isDarkTheme),
      width: size,
      height: size,
      cacheHeight: cachedSize,
      cacheWidth: cachedSize,
      fit: BoxFit.contain,
    );
  }
}