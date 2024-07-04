import 'package:flutter/material.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';
import 'package:flutternba/ui/standings/widgets/standings_stat_type.dart';
import 'package:flutternba/ui/standings/widgets/standings_value_cell.dart';

class StandingsRow extends StatelessWidget {
  final TeamStandings team;
  final TeamRank rank;
  final bool isHighlighted;

  const StandingsRow({
    super.key,
    required this.team,
    required this.rank,
    required this.isHighlighted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          child: Text(
            rank.rank.toString(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        NbaTeamLogo(teamId: team.id, size: 24),
        const SizedBox(width: 4),
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
        ...StandingsStatType.values.map((type) {
          return StandingsValueCell(
            text: type.getValue(team.overall, rank.gamesBehind),
          );
        }),
      ],
    );
  }
}
