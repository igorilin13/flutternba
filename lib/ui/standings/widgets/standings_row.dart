import 'package:flutter/material.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';
import 'package:flutternba/ui/standings/widgets/standings_stat_type.dart';
import 'package:flutternba/ui/standings/widgets/standings_value_cell.dart';

class StandingsRow extends StatelessWidget {
  final TeamStandings item;
  final TeamRank rank;
  final bool isHighlighted;

  const StandingsRow({
    super.key,
    required this.item,
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
        if (AppConfig.showTeamLogos)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: NbaTeamLogo.imageOnly(
              teamId: item.id,
              size: NbaTeamLogoSize.xSmall,
            ),
          ),
        Expanded(
          child: Text(
            item.team.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight:
                      isHighlighted ? FontWeight.bold : FontWeight.normal,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ...StandingsStatType.values.map((type) {
          return StandingsValueCell(
            text: type.getValue(item.overall, rank.gamesBehind),
          );
        }),
      ],
    );
  }
}
