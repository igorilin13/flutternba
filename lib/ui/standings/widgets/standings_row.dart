import 'package:flutter/material.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/ui/standings/widgets/standings_value_cell.dart';
import 'package:flutternba/ui/util/asset_paths.dart';
import 'package:flutternba/ui/util/extensions.dart';

class StandingsRow extends StatelessWidget {
  final TeamStandings team;
  final TeamRank rank;
  final BoxDecoration decoration;
  final bool isHighlighted;
  final VoidCallback onTap;

  const StandingsRow({
    super.key,
    required this.team,
    required this.rank,
    required this.decoration,
    required this.isHighlighted,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: decoration,
        padding: const EdgeInsets.only(left: 12, right: 4, top: 8, bottom: 8),
        child: Row(
          children: [
            SizedBox(
              width: 24,
              child: Text(
                rank.rank.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Image.asset(
              AssetPaths.teamLogo(team.teamId),
              height: 24,
              width: 24,
              cacheHeight: 24.toPx(context),
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                team.teamName,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight:
                          isHighlighted ? FontWeight.bold : FontWeight.normal,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            StandingsValueCell(text: team.overallRecord.wins.toString()),
            StandingsValueCell(text: team.overallRecord.losses.toString()),
            StandingsValueCell(
              text:
                  team.overallRecord.percentage.toStringAsFixed(3).substring(1),
            ),
            StandingsValueCell(text: rank.gamesBehind ?? "-"),
          ],
        ),
      ),
    );
  }
}
