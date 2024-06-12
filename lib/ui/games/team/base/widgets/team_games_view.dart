import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/data/games/game_model.dart';
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
import 'package:flutternba/ui/util/widgets/error_display_inline.dart';
import 'package:flutternba/ui/util/widgets/game_card.dart';
import 'package:flutternba/ui/util/widgets/header_item.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'team_page_header.dart';

class TeamGamesView<T extends BaseTeamGamesCubit> extends StatefulWidget {
  final String restorationId;
  final TeamGamesState gamesState;
  final PagingController<GamesPageKey?, GameItem> finishedGamesController;

  const TeamGamesView({
    super.key,
    required this.gamesState,
    required this.restorationId,
    required this.finishedGamesController,
  });

  @override
  State<TeamGamesView<T>> createState() => _TeamGamesViewState<T>();
}

class _TeamGamesViewState<T extends BaseTeamGamesCubit>
    extends State<TeamGamesView<T>> {
  @override
  void initState() {
    widget.finishedGamesController.addPageRequestListener(
      context.read<T>().loadNextFinishedGamesPage,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hideScores = context.select<SettingsCubit, bool>(
      (cubit) => cubit.state.shouldHideScores ?? false,
    );

    final state = widget.gamesState;
    switch (state) {
      case InitialLoadingState():
        return const Center(child: CircularProgressIndicator());
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
    final teamStandings = state.standings?.valueOrNull;
    final items = <Widget>[
      const SizedBox(height: 16),
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
        )
      else if (state.upcomingGamesError != null) ...[
        _buildSectionHeader(UiStrings.sectionUpcomingGames),
        InlineErrorDisplay(
          message: UiStrings.upcomingGamesLoadError,
          onTap: context.read<T>().retryLoadingUpcoming,
        ),
      ],
      if (state.isLoadingUpcomingGames)
        const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      if (state.hasHiddenUpcomingGames && !state.isLoadingUpcomingGames)
        ExpandUpcomingButtonItem(
          onPressed: context.read<T>().showAllUpcoming,
        ),
      if (state.previousGames?.items.isNotEmpty == true ||
          state.previousGamesPageError != null)
        _buildSectionHeader(UiStrings.sectionPreviousGames),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        restorationId: widget.restorationId,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => items[index],
              childCount: items.length,
            ),
          ),
          PagedSliverList<GamesPageKey?, GameItem>(
            pagingController: widget.finishedGamesController,
            builderDelegate: PagedChildBuilderDelegate<GameItem>(
              itemBuilder: (context, item, index) =>
                  _buildGameCardWidget(context, item, hideScores, state.teamId),
              firstPageErrorIndicatorBuilder: (_) => InlineErrorDisplay(
                message: UiStrings.previousGamesLoadError,
                onTap: context.read<T>().retryLoadingFinished,
              ),
              newPageErrorIndicatorBuilder: (_) => InlineErrorDisplay(
                message: UiStrings.previousGamesLoadError,
                onTap: context.read<T>().retryLoadingFinished,
              ),
              noItemsFoundIndicatorBuilder: (_) => const SizedBox(height: 16),
              noMoreItemsIndicatorBuilder: (_) => const SizedBox(height: 16),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSectionItems(
    String title,
    List<GameItem> games,
    bool hideScores,
    int teamId,
  ) {
    return [
      _buildSectionHeader(title),
      for (var game in games)
        _buildGameCardWidget(context, game, hideScores, teamId),
    ];
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 12, top: 12),
      child: HeaderItem(text: title),
    );
  }

  Widget _buildGameCardWidget(
    BuildContext context,
    GameItem game,
    bool hideScores,
    int teamId,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GameCard(
        item: game,
        hideScores: hideScores,
        teamOutcomeId: teamId,
      ),
    );
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
