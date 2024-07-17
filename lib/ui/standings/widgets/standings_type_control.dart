import 'dart:io';

import 'package:flutter/cupertino.dart';
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
    if (Platform.isIOS) {
      return SizedBox(
        width: double.infinity,
        child: CupertinoSlidingSegmentedControl<StandingsType>(
          children: availableTypes.associateWith((item) {
            return Text(item.displayName);
          }),
          groupValue: selected,
          onValueChanged: (selected) {
            if (selected != null) {
              context.read<StandingsCubit>().changeType(selected);
            }
          },
        ),
      );
    } else {
      return SizedBox(
        width: double.infinity,
        child: SegmentedButton<StandingsType>(
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
            padding: EdgeInsets.zero,
            visualDensity: const VisualDensity(horizontal: 4, vertical: -2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            side: BorderSide(
              width: 0.5,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ),
      );
    }
  }
}
