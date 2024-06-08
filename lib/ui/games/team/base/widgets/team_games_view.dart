import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/ui/games/team/base/base_team_games_cubit.dart';
import 'package:flutternba/ui/games/team/base/team_games_state.dart';
import 'package:flutternba/ui/games/team/base/widgets/expand_upcoming.dart';
import 'package:flutternba/ui/games/team/base/widgets/team_tidbit_card.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
import 'package:flutternba/ui/util/colors.dart';
import 'package:flutternba/ui/util/strings.dart';
import 'package:flutternba/ui/util/widgets/error_display.dart';
import 'package:flutternba/ui/util/widgets/game_card.dart';
import 'package:flutternba/ui/util/widgets/header_item.dart';

import 'team_page_header.dart';

class TeamGamesView<T extends BaseTeamGamesCubit> extends StatelessWidget {
  final String restorationId;
  final TeamGamesState gamesState;

  const TeamGamesView({
    super.key,
    required this.gamesState,
    required this.restorationId,
  });

  @override
  Widget build(BuildContext context) {
    final hideScores = context.select<SettingsCubit, bool>(
      (cubit) => cubit.state.shouldHideScores ?? false,
    );

    final state = gamesState;
    switch (state) {
      case LoadingState():
        return const Center(child: CircularProgressIndicator());
      case ErrorState():
        return Center(
          child: ErrorDisplay(
            message: UiStrings.gameListLoadError,
            onTap: context.read<T>().retryLoading,
          ),
        );
      case NoGamesAvailableState():
        return const Center(
          child: ErrorDisplay(
            message: UiStrings.noGamesMessage,
            icon: Icons.calendar_today,
          ),
        );
      case DisplayDataState():
        return _buildGameList(context, state, hideScores);
    }
  }

  Widget _buildGameList(
    BuildContext context,
    DisplayDataState state,
    bool hideScores,
  ) {
    final teamStandings = state.standings?.getOrNull();
    final items = <Widget>[
      if (teamStandings != null)
        ..._buildStandingsSection(context, teamStandings, hideScores),
      if (state.nextGame != null)
        ..._buildSectionItems(
          UiStrings.sectionNextGame,
          [state.nextGame!],
          hideScores,
          state.teamId,
        ),
      if (state.previousGame != null)
        ..._buildSectionItems(
          UiStrings.sectionPreviousGame,
          [state.previousGame!],
          hideScores,
          state.teamId,
        ),
      if (state.upcomingGames.isNotEmpty)
        ..._buildSectionItems(
          UiStrings.sectionUpcomingGames,
          state.upcomingGames,
          hideScores,
          state.teamId,
        ),
      if (state.hasHiddenUpcomingGames)
        ExpandUpcomingButtonItem(
          onPressed: context.read<T>().showAllUpcoming,
        ),
      if (state.previousGames.isNotEmpty)
        ..._buildSectionItems(
          UiStrings.sectionPreviousGames,
          state.previousGames,
          hideScores,
          state.teamId,
        ),
    ];

    return ListView.builder(
      restorationId: restorationId,
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) => items[index],
    );
  }

  List<Widget> _buildSectionItems(
    String title,
    List<GameItem> games,
    bool hideScores,
    int teamId,
  ) {
    return [
      Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 12, top: 12),
        child: HeaderItem(text: title),
      ),
      for (var game in games)
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: GameCard(
            item: game,
            hideScores: hideScores,
            teamOutcomeId: teamId,
          ),
        )
    ];
  }

  List<Widget> _buildStandingsSection(
    BuildContext context,
    TeamStandings standings,
    bool hideScores,
  ) {
    return [
      Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: TeamPageHeader(
          teamId: standings.teamId,
          teamName: standings.fullTeamName,
        ),
      ),
      if (!hideScores)
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            children: [
              TeamTidbitCard(
                contentValue: UiStrings.teamRecordFormat(
                  standings.overallRecord.wins,
                  standings.overallRecord.losses,
                ),
                caption: UiStrings.conferencePositionCaption(
                  standings.conferenceRank.rank,
                  standings.conferenceName,
                ),
              ),
              TeamTidbitCard(
                caption: UiStrings.captionLastTen,
                contentValue: UiStrings.teamRecordFormat(
                  standings.lastTenRecord.wins,
                  standings.lastTenRecord.losses,
                ),
              ),
              TeamTidbitCard(
                caption: UiStrings.captionStreak,
                contentStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: standings.winStreak
                          ? Theme.of(context).colorScheme.win
                          : Theme.of(context).colorScheme.loss,
                      fontWeight: FontWeight.w600,
                    ),
                contentValue: UiStrings.teamStreak(
                  standings.streak,
                  standings.winStreak,
                ),
              ),
            ],
          ),
        )
    ];
  }
}
