import 'package:flutter/material.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/common/util/string_ext.dart';
import 'package:flutternba/data/scores/remote/box_score_response.dart';
import 'package:flutternba/data/teams/team_model.dart';
import 'package:flutternba/ui/core/components/list_card.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';
import 'package:flutternba/ui/core/strings.dart';

class GamePlayerStats extends StatelessWidget {
  final Team team;
  final List<PlayerStats> players;

  const GamePlayerStats({super.key, required this.team, required this.players});

  @override
  Widget build(BuildContext context) {
    return NbaListCard(
      children: [
        _buildHeaderRow(context),
        const SizedBox(height: 4),
        for (final player in players) ...[
          const SizedBox(height: 8),
          _buildPlayerRow(context, player),
        ]
      ],
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Row(
      children: [
        if (AppConfig.showTeamLogos)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: NbaTeamLogo.imageOnly(
              teamId: team.id,
              size: NbaTeamLogoSize.xSmall,
            ),
          )
        else
          const SizedBox(width: 8),
        Expanded(
          child: Text(
            team.name,
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        for (final type in _StatType.values) ...[
          SizedBox(
            width: type.columnWidth,
            child: Text(
              type.title,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          )
        ],
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildPlayerRow(BuildContext context, PlayerStats player) {
    return NbaListCardTile(
      child: Row(
        children: [
          Expanded(
            child: Text(
              "${player.firstName.first()}. ${player.lastName}",
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          for (final type in _StatType.values) ...[
            SizedBox(
              width: type.columnWidth,
              child: Text(
                type.buildValue(player),
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ],
      ),
    );
  }
}

enum _StatType {
  minutes(UiStrings.statAbbrMinutes, 28),
  points(UiStrings.statAbbrPoints, 28),
  fieldGoals(UiStrings.statAbbrFieldGoals, 36),
  threePointers(UiStrings.statAbbrThreePointers, 36),
  rebounds(UiStrings.statAbbrRebounds, 28),
  assists(UiStrings.statAbbrAssists, 28);

  final String title;
  final double columnWidth;

  const _StatType(this.title, this.columnWidth);

  String buildValue(PlayerStats player) {
    switch (this) {
      case _StatType.minutes:
        return player.minutes.toString();
      case _StatType.points:
        return player.points.toString();
      case _StatType.fieldGoals:
        return "${player.fgMade}-${player.fgAttempts}";
      case _StatType.threePointers:
        return "${player.threePtMade}-${player.threePtAttempts}";
      case _StatType.rebounds:
        return player.rebounds.toString();
      case _StatType.assists:
        return player.assists.toString();
    }
  }
}
