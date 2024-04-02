import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/domain/standings/standings_model.dart';
import 'package:flutternba/ui/standings/standings_cubit.dart';
import 'package:flutternba/ui/standings/widgets/standings_header_row.dart';
import 'package:flutternba/ui/standings/widgets/standings_row.dart';
import 'package:flutternba/ui/standings/widgets/standings_type_control.dart';
import 'package:flutternba/ui/util/strings.dart';
import 'package:flutternba/ui/util/widgets/cta_message.dart';
import 'package:flutternba/ui/util/widgets/error_display.dart';
import 'package:flutternba/ui/util/widgets/header_item.dart';

class StandingsScreen extends StatefulWidget {
  const StandingsScreen({super.key});

  @override
  State<StandingsScreen> createState() => _StandingsScreenState();
}

class _StandingsScreenState extends State<StandingsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => StandingsCubit(locator(), locator()),
      child: BlocBuilder<StandingsCubit, StandingsState>(builder: _buildBody),
    );
  }

  Widget _buildBody(BuildContext context, StandingsState state) {
    switch (state) {
      case LoadingState():
        return _buildNonDisplayState(
          context: context,
          state: state,
          child: const CircularProgressIndicator(),
        );
      case HideScoresOnState():
        return _buildNonDisplayState(
          context: context,
          state: state,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ActionMessageDisplay(
              message: UiStrings.standingsHideScoresMessage,
              actionText: UiStrings.actionRevealStandings,
              icon: Icons.check,
              onAction: context.read<StandingsCubit>().overrideHideScores,
            ),
          ),
        );
      case ErrorState():
        return _buildNonDisplayState(
          context: context,
          state: state,
          child: ErrorDisplay(
            message: UiStrings.standingsLoadError,
            onTap: context.read<StandingsCubit>().retryLoading,
          ),
        );
      case DisplayState():
        return _buildStandingsList(context, state);
    }
  }

  Widget _buildNonDisplayState({
    required BuildContext context,
    required StandingsState state,
    required Widget child,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          StandingsTypeControl(selected: state.type),
          Expanded(child: Center(child: child)),
        ],
      ),
    );
  }

  Widget _buildStandingsList(BuildContext context, DisplayState state) {
    final rowDecoration = BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 0.2,
        ),
      ),
    );

    final items = <Widget>[
      Center(child: StandingsTypeControl(selected: state.type)),
      for (var collection in state.collections) ...[
        if (collection.title != null)
          HeaderItem(
            text: collection.title!,
            padding: const EdgeInsets.only(top: 16),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        for (var group in collection.groups) ...[
          if (collection.title == null) const SizedBox(height: 12),
          StandingsHeaderRow(
            decoration: rowDecoration,
            title: group.title,
          ),
          for (var team in group.teams) ...[
            StandingsRow(
              team: team,
              rank: state.type == StandingsType.conference
                  ? team.conferenceRank
                  : team.divisionRank,
              decoration: rowDecoration,
              isHighlighted: team.teamId == state.favoriteTeamId,
            ),
          ],
        ],
      ],
    ];

    return ListView.builder(
      restorationId: "standings",
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      itemCount: items.length,
      itemBuilder: (context, index) => items[index],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
