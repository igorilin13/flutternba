import 'package:flutter/material.dart';
import 'package:flutternba/data/scores/box_score_models.dart';
import 'package:flutternba/ui/util/strings.dart';
import 'package:flutternba/ui/util/widgets/team_logo.dart';

class GameTeamStats extends StatelessWidget {
  final TeamStats home;
  final TeamStats away;

  const GameTeamStats({super.key, required this.home, required this.away});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Column(
          children: [
            _buildHeaderRow(context),
            for (final statType in _StatType.values) ...[
              const SizedBox(height: 8),
              _buildStatRow(context, statType),
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        children: [
          TeamLogo(teamId: home.id, height: 28, width: 28),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              UiStrings.titleTeamStats,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: TeamLogo(teamId: away.id, height: 28, width: 28),
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(BuildContext context, _StatType type) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
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
  steals(UiStrings.statSteals),
  blocks(UiStrings.statBlocks),
  turnovers(UiStrings.statTurnovers);

  final String title;

  const _StatType(this.title);

  String buildValue(TeamStats stats) {
    switch (this) {
      case _StatType.fieldGoals:
        return "${stats.fgm}/${stats.fga} (${stats.fgPct}%)";
      case _StatType.threePointers:
        return "${stats.fg3pm}/${stats.fg3pa} (${stats.fg3Pct}%)";
      case _StatType.freeThrows:
        return "${stats.ftm}/${stats.fta} (${stats.ftPct}%)";
      case _StatType.rebounds:
        return "${stats.oreb} + ${stats.dreb} (${stats.reb})";
      case _StatType.steals:
        return stats.stl.toString();
      case _StatType.blocks:
        return stats.blk.toString();
      case _StatType.turnovers:
        return stats.to.toString();
    }
  }
}
