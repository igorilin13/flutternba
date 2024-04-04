import 'package:flutter/material.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/ui/util/colors.dart';
import 'package:flutternba/ui/util/extensions.dart';

import '../../../data/teams/team_model.dart';
import '../asset_paths.dart';
import '../strings.dart';

class GameCard extends StatelessWidget {
  final GameItem item;
  final bool hideScores;
  final int? teamOutcomeId;

  const GameCard({
    super.key,
    required this.item,
    required this.hideScores,
    this.teamOutcomeId,
  });

  @override
  Widget build(BuildContext context) {
    final teamOutcome =
        teamOutcomeId != null ? item.game.getTeamOutcome(teamOutcomeId!) : null;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
                  if (item.game.time != null)
                    Text(
                      item.game.time!,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildTeamInfo(
                      context,
                      item.game.homeTeam,
                      item.homeTeamStandings,
                      hideScores,
                      CrossAxisAlignment.start,
                    ),
                    _buildTeamInfo(
                      context,
                      item.game.visitorTeam,
                      item.visitorTeamStandings,
                      hideScores,
                      CrossAxisAlignment.end,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: _buildGameScore(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTeamInfo(
    BuildContext context,
    Team team,
    TeamStandings? standings,
    bool hideScores,
    CrossAxisAlignment alignment,
  ) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Image.asset(
          AssetPaths.teamLogo(team.id),
          height: 48,
          width: 48,
          cacheHeight: 48.toPx(context),
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          team.name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        if (standings != null && !hideScores)
          Text(
            UiStrings.teamRecordCaptionFormat(
              standings.overallRecord.wins,
              standings.overallRecord.losses,
            ),
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10),
          ),
      ],
    );
  }

  Widget _buildGameScore(BuildContext context) {
    final hasScores =
        !hideScores && item.game.gameStatus != GameStatus.scheduled;
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
