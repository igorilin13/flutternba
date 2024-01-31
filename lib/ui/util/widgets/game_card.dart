import 'package:flutter/material.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/ui/util/extensions.dart';

import '../../../data/teams/team_model.dart';
import '../asset_paths.dart';
import '../strings.dart';

class GameCard extends StatelessWidget {
  final GameItem item;
  final bool hideScores;

  const GameCard({super.key, required this.item, required this.hideScores});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.game.postseason
                        ? UiStrings.playoffWithDateFormat(item.formattedDate)
                        : item.formattedDate,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
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
                      CrossAxisAlignment.start,
                    ),
                    _buildTeamInfo(
                      context,
                      item.game.visitorTeam,
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
        )
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
}
