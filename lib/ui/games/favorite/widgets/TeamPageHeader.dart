import 'package:flutter/material.dart';
import 'package:flutternba/ui/util/asset_paths.dart';
import 'package:flutternba/ui/util/extensions.dart';
import 'package:flutternba/ui/util/widgets/header_item.dart';

class TeamPageHeader extends StatelessWidget {
  final int teamId;
  final String teamName;

  const TeamPageHeader({
    super.key,
    required this.teamId,
    required this.teamName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetPaths.teamLogo(teamId),
          height: 32,
          width: 32,
          cacheHeight: 32.toPx(context),
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 8),
        HeaderItem(
          text: teamName,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
