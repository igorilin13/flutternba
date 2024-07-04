import 'package:flutter/material.dart';
import 'package:flutternba/ui/standings/widgets/standings_stat_type.dart';
import 'package:flutternba/ui/standings/widgets/standings_value_cell.dart';

class StandingsHeaderRow extends StatelessWidget {
  final String title;

  const StandingsHeaderRow({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
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
          ...StandingsStatType.values.map((type) {
            return StandingsValueCell(text: type.label);
          }),
        ],
      ),
    );
  }
}
