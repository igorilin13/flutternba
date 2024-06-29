import 'package:flutter/material.dart';
import 'package:flutternba/ui/util/widgets/header_item.dart';
import 'package:flutternba/ui/util/widgets/team_logo.dart';

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
        TeamLogo(teamId: teamId, height: 32, width: 32),
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
