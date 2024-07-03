import 'package:flutter/material.dart';
import 'package:flutternba/data/scores/box_score_models.dart';
import 'package:flutternba/ui/core/components/list_card.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';
import 'package:flutternba/ui/core/strings.dart';

class GameTeamStats extends StatelessWidget {
  final TeamStats home;
  final TeamStats away;

  const GameTeamStats({super.key, required this.home, required this.away});

  @override
  Widget build(BuildContext context) {
    return NbaListCard(
      children: [
        _buildHeaderRow(context),
        for (final statType in _StatType.values) ...[
          const SizedBox(height: 8),
          _buildStatRow(context, statType),
        ]
      ],
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        children: [
          NbaTeamLogo(teamId: home.id, size: 28),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              UiStrings.titleTeamStats,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: NbaTeamLogo(teamId: away.id, size: 28),
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(BuildContext context, _StatType type) {
    return NbaListCardTile(
      child: Stack(
        children: [
          Text(
            type.buildValue(home),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Center(
            child: Text(
              type.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              type.buildValue(away),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

enum _StatType {
  fieldGoals(UiStrings.statFieldGoals),
  threePointers(UiStrings.statThreePointers),
  freeThrows(UiStrings.statFreeThrows),
  rebounds(UiStrings.statRebounds),
  assists(UiStrings.statAssists),
  steals(UiStrings.statSteals),
  blocks(UiStrings.statBlocks),
  turnovers(UiStrings.statTurnovers);

  final String title;

  const _StatType(this.title);

  String buildValue(TeamStats stats) {
    switch (this) {
      case _StatType.fieldGoals:
        return "${stats.fgMade}/${stats.fgAttempts} (${stats.fgPct}%)";
      case _StatType.threePointers:
        return "${stats.threePtMade}/${stats.threePtAttempts}"
            " (${stats.threePtPct}%)";
      case _StatType.freeThrows:
        return "${stats.ftMade}/${stats.ftAttempts} (${stats.ftPct}%)";
      case _StatType.rebounds:
        return "${stats.offRebounds} + ${stats.defRebounds}"
            " (${stats.rebounds})";
      case _StatType.assists:
        return stats.assists.toString();
      case _StatType.steals:
        return stats.steals.toString();
      case _StatType.blocks:
        return stats.blocks.toString();
      case _StatType.turnovers:
        return stats.turnovers.toString();
    }
  }
}
