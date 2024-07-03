import 'package:flutter/material.dart';
import 'package:flutternba/ui/core/components/header_item.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';

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
        NbaTeamLogo(teamId: teamId, size: 32),
        const SizedBox(width: 8),
        NbaHeaderItem(
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
