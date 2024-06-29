import 'package:flutter/material.dart';
import 'package:flutternba/ui/util/asset_paths.dart';
import 'package:flutternba/ui/util/extensions.dart';

class TeamLogo extends StatelessWidget {
  final int teamId;
  final double? height;
  final double? width;
  final BoxFit fit;

  const TeamLogo({
    super.key,
    required this.teamId,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetPaths.teamLogo(teamId),
      width: width,
      height: height,
      cacheHeight: height?.toPx(context).round(),
      fit: fit,
    );
  }
}
