import 'package:flutter/material.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/data/standings/playoffs/playoff_models.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';

class PlayoffSeriesCard extends StatelessWidget {
  final PlayoffSeries series;
  final int? favoriteTeamId;
  final void Function(int teamId) onTeamTap;

  const PlayoffSeriesCard({
    super.key,
    required this.series,
    required this.onTeamTap,
    this.favoriteTeamId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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

    return InkWell(
      onTap: () => onTeamTap(id),
      child: Row(
        children: [
          SizedBox(
            width: 16,
            child: Text(
              rank.toString(),
              style: theme.textTheme.bodyMedium,
            ),
          ),
          if (AppConfig.showTeamLogos)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: NbaTeamLogo.imageOnly(
                teamId: id,
                size: NbaTeamLogoSize.xSmall,
              ),
            ),
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
      ),
    );
  }
}
