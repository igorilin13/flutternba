import 'package:flutter/material.dart';
import 'package:flutternba/ui/standings/widgets/standings_value_cell.dart';
import 'package:flutternba/ui/util/strings.dart';

class StandingsHeaderRow extends StatelessWidget {
  final String title;
  final BoxDecoration decoration;

  const StandingsHeaderRow({
    super.key,
    required this.decoration,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      padding: const EdgeInsets.only(left: 8, right: 4, top: 16, bottom: 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const StandingsValueCell(text: UiStrings.standingsColumnWins),
          const StandingsValueCell(text: UiStrings.standingsColumnLosses),
          const StandingsValueCell(
            text: UiStrings.standingsColumnWinPercentage,
          ),
          const StandingsValueCell(text: UiStrings.standingsColumnGamesBehind),
        ],
      ),
    );
  }
}
