import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/domain/standings/standings_model.dart';
import 'package:flutternba/ui/standings/standings_cubit.dart';

class StandingsTypeControl extends StatelessWidget {
  final List<StandingsType> availableTypes;
  final StandingsType selected;

  const StandingsTypeControl({
    super.key,
    required this.availableTypes,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<StandingsType>(
      segments: availableTypes.mapList(
        (type) => ButtonSegment<StandingsType>(
          value: type,
          label: Text(type.displayName),
        ),
      ),
      selected: {selected},
      onSelectionChanged: (selected) {
        context.read<StandingsCubit>().changeType(selected.first);
      },
      showSelectedIcon: false,
      style: OutlinedButton.styleFrom(
        visualDensity: const VisualDensity(horizontal: 4, vertical: -4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(
          width: 0.5,
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
    );
  }
}
