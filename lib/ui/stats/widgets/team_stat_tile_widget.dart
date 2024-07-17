import 'package:flutter/material.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/domain/teams/stats/team_season_stats_models.dart';
import 'package:flutternba/ui/core/components/list_card.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';

class TeamStatCardTile extends StatelessWidget {
  final TeamStatValue team;
  final int rank;
  final bool isHighlighted;

  const TeamStatCardTile({
    super.key,
    required this.team,
    required this.rank,
    required this.isHighlighted,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return NbaListCardTile(
      child: Row(
        children: [
          SizedBox(
            width: 20,
            child: Text(
              rank.toString(),
              style: theme.textTheme.bodySmall,
            ),
          ),
          if (AppConfig.showTeamLogos)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: NbaTeamLogo.imageOnly(
                teamId: team.team.id,
                size: NbaTeamLogoSize.xSmall,
              ),
            ),
          Expanded(
            child: Text(
              team.team.fullName,
              style: isHighlighted
                  ? theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold)
                  : theme.textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(team.value.toStringAsFixed(1)),
        ],
      ),
    );
  }
}
