import 'package:flutter/material.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/ui/util/colors.dart';
import 'package:flutternba/ui/util/widgets/team_logo.dart';

import '../../../data/teams/team_model.dart';
import '../strings.dart';

class GameCard extends StatelessWidget {
  final GameItem item;
  final bool hideScores;
  final int? teamOutcomeId;
  final VoidCallback? onTap;

  const GameCard({
    super.key,
    required this.item,
    required this.hideScores,
    this.teamOutcomeId,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);
    final teamOutcome =
        teamOutcomeId != null ? item.game.getTeamOutcome(teamOutcomeId!) : null;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Row(
                  children: [
                    Text(
                      item.game.postseason
                          ? UiStrings.playoffWithDateFormat(item.formattedDate)
                          : item.formattedDate,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const Spacer(),
                    if (teamOutcome != null && !hideScores) ...[
                      _buildTeamOutcomeLabel(context, teamOutcome),
                      const SizedBox(width: 4),
                    ],
                    if (item.game.inGameTime != null)
                      Text(
                        item.game.inGameTime!,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTeamInfo(
                        context,
                        item.game.homeTeam,
                        item.homeTeamRecord,
                        hideScores,
                        CrossAxisAlignment.start,
                      ),
                      _buildTeamInfo(
                        context,
                        item.game.visitorTeam,
                        item.visitorTeamRecord,
                        hideScores,
                        CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 80, right: 80, top: 20),
                    child: _buildGameScore(context),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTeamInfo(
    BuildContext context,
    Team team,
    WinLossRecord? record,
    bool hideScores,
    CrossAxisAlignment alignment,
  ) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TeamLogo(teamId: team.id, height: 48, width: 48),
        const SizedBox(height: 8),
        Text(
          team.name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        if (record != null && !hideScores)
          Text(
            UiStrings.teamRecordCaptionFormat(record.win, record.loss),
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10),
          ),
      ],
    );
  }

  Widget _buildGameScore(BuildContext context) {
    final hasScores = !hideScores && item.game.status != GameStatus.scheduled;
    if (hasScores) {
      final textStyle = Theme.of(context).textTheme.titleLarge;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item.game.homeTeamScore.toString(), style: textStyle),
          const Text("-"),
          Text(item.game.visitorTeamScore.toString(), style: textStyle),
        ],
      );
    } else {
      return const Text(UiStrings.versus);
    }
  }

  Widget _buildTeamOutcomeLabel(BuildContext context, TeamOutcome outcome) {
    final String text;
    final Color color;

    switch (outcome) {
      case TeamOutcome.win:
        text = UiStrings.shortLabelWin;
        color = Theme.of(context).colorScheme.win;
      case TeamOutcome.loss:
        text = UiStrings.shortLabelLoss;
        color = Theme.of(context).colorScheme.loss;
    }

    return Text(
      text,
      style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
