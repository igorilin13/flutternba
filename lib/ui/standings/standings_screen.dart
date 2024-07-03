import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/domain/standings/standings_model.dart';
import 'package:flutternba/ui/core/components/cta_message.dart';
import 'package:flutternba/ui/core/components/error_display.dart';
import 'package:flutternba/ui/core/components/header_item.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/games/team/team_games_screen.dart';
import 'package:flutternba/ui/standings/standings_cubit.dart';
import 'package:flutternba/ui/standings/widgets/playoff_series_card.dart';
import 'package:flutternba/ui/standings/widgets/standings_header_row.dart';
import 'package:flutternba/ui/standings/widgets/standings_row.dart';
import 'package:flutternba/ui/standings/widgets/standings_type_control.dart';

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
      create: (context) => StandingsCubit(
        locator(),
        locator(),
        locator(),
        locator(),
      ),
      child: BlocBuilder<StandingsCubit, StandingsState>(builder: _buildBody),
    );
  }

  Widget _buildBody(BuildContext context, StandingsState state) {
    switch (state) {
      case LoadingState():
        return const Center(child: CircularProgressIndicator());
      case HideScoresOnState():
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: NbaActionMessage(
              message: UiStrings.standingsHideScoresMessage,
              actionText: UiStrings.actionRevealStandings,
              icon: Icons.check,
              onAction: context.read<StandingsCubit>().overrideHideScores,
            ),
          ),
        );
      case ErrorState():
        return Center(
          child: NbaErrorDisplay(
            message: UiStrings.standingsLoadError,
            onTap: context.read<StandingsCubit>().retryLoading,
          ),
        );

      case DisplayRegSeasonState():
        return _buildRegSeasonStandings(context, state);
      case DisplayPlayoffsState():
        return _buildPlayoffsList(context, state);
    }
  }

  Widget _buildRegSeasonStandings(
    BuildContext context,
    DisplayRegSeasonState state,
  ) {
    final rowDecoration = BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 0.2,
        ),
      ),
    );

    final items = <Widget>[
      Center(
        child: StandingsTypeControl(
          availableTypes: state.availableStandingTypes,
          selected: state.selectedType,
        ),
      ),
      for (var collection in state.collections) ...[
        if (collection.title != null)
          NbaHeaderItem(
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
              rank: state.selectedType == StandingsType.conference
                  ? team.conference
                  : team.division,
              decoration: rowDecoration,
              isHighlighted: team.id == state.favoriteTeamId,
              onTap: () => TeamGamesScreen.navigate(context, team.id),
            ),
          ],
        ],
      ],
    ];

    return ListView(
      restorationId: "standings",
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      children: items,
    );
  }

  Widget _buildPlayoffsList(
    BuildContext context,
    DisplayPlayoffsState state,
  ) {
    final items = [
      Center(
        child: StandingsTypeControl(
          availableTypes: state.availableStandingTypes,
          selected: state.selectedType,
        ),
      ),
      for (var round in state.rounds) ...[
        NbaHeaderItem(
          text: UiStrings.playoffRoundName(round.id),
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        for (var series in round.series)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: PlayoffSeriesCard(
              series: series,
              favoriteTeamId: state.favoriteTeamId,
            ),
          ),
      ],
    ];

    return ListView(
      restorationId: "playoffs",
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      children: items,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
