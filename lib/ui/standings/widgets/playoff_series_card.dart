import 'package:flutter/material.dart';
import 'package:flutternba/data/standings/playoffs/playoff_models.dart';
import 'package:flutternba/ui/util/widgets/team_logo.dart';

class PlayoffSeriesCard extends StatelessWidget {
  final PlayoffSeries series;
  final int? favoriteTeamId;

  const PlayoffSeriesCard({
    super.key,
    required this.series,
    this.favoriteTeamId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            buildTeamRow(
              context,
              id: series.homeTeamId,
              rank: series.homeTeamRank,
              name: series.homeTeamName,
              wins: series.homeTeamWins,
            ),
            const SizedBox(height: 4),
            buildTeamRow(
              context,
              id: series.awayTeamId,
              rank: series.awayTeamRank,
              name: series.awayTeamName,
              wins: series.awayTeamWins,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTeamRow(
    BuildContext context, {
    required int id,
    required int rank,
    required String name,
    required int wins,
  }) {
    final theme = Theme.of(context);
    final isHighlighted = id == favoriteTeamId;

    return Row(
      children: [
        Text(
          rank.toString(),
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(width: 8),
        TeamLogo(teamId: id, height: 24, width: 24, fit: BoxFit.scaleDown),
        const SizedBox(width: 8),
        Text(
          name,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        const Spacer(),
        Text(
          wins.toString(),
          style: theme.textTheme.headlineSmall,
        ),
      ],
    );
  }
}
