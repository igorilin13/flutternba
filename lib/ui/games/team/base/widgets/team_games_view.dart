import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/ui/core/components/app_bar.dart';
import 'package:flutternba/ui/core/components/error_display.dart';
import 'package:flutternba/ui/core/components/error_display_inline.dart';
import 'package:flutternba/ui/core/components/game_card.dart';
import 'package:flutternba/ui/core/components/header_item.dart';
import 'package:flutternba/ui/core/components/list_card.dart';
import 'package:flutternba/ui/core/components/progress_indicator.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/games/team/base/base_team_games_cubit.dart';
import 'package:flutternba/ui/games/team/base/team_games_state.dart';
import 'package:flutternba/ui/games/team/base/widgets/expand_upcoming.dart';
import 'package:flutternba/ui/scores/box_score_screen.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TeamGamesView<T extends BaseTeamGamesCubit> extends StatefulWidget {
  final String restorationId;
  final TeamGamesState gamesState;
  final PagingController<GamesPageKey?, GameItem> finishedGamesController;
  final bool showBackButton;

  const TeamGamesView({
    super.key,
    required this.gamesState,
    required this.restorationId,
    required this.finishedGamesController,
    required this.showBackButton,
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
    final Widget body = switch (state) {
      InitialLoadingState() => const Center(child: NbaProgressIndicator()),
      NoGamesAvailableState() => const Center(
          child: NbaErrorDisplay(
            title: UiStrings.noTeamGamesTitle,
            message: UiStrings.noTeamGamesMessage,
          ),
        ),
      DisplayDataState() => _buildGameList(context, state, hideScores),
    };

    return Scaffold(
      appBar: _buildAppBar(context, state),
      body: body,
    );
  }

  NbaAppBar _buildAppBar(BuildContext context, TeamGamesState state) {
    final standings =
        state is DisplayDataState ? state.standings?.valueOrNull : null;
    return NbaAppBar(
      showBackButton: widget.showBackButton,
      title: standings != null
          ? NbaHeaderItem(
              text: standings.fullTeamName,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w500),
            )
          : null,
    );
  }

  Widget _buildGameList(
    BuildContext context,
    DisplayDataState state,
    bool hideScores,
  ) {
    final teamStandings = state.standings?.valueOrNull;
    final items = <Widget>[
      if (!hideScores && teamStandings != null) ...[
        _buildStandingsCard(context, teamStandings),
        const SizedBox(height: 12),
      ],
      if (state.nextGame != null)
        ..._buildSectionItems(
          UiStrings.sectionNextGame,
          [state.nextGame!],
          hideScores,
          state.teamId,
        ),
      if (state.previousGame != null)
        ..._buildSectionItems(
          UiStrings.sectionRecentGame,
          [state.previousGame!],
          hideScores,
          state.teamId,
        ),
      ..._buildUpcomingGamesSection(context, state, hideScores),
      if (state.previousGames?.items.isNotEmpty == true ||
          state.previousGamesPageError != null)
        _buildSectionHeader(UiStrings.sectionPreviousGames),
    ];

    const progressIndicator = Center(
      child: NbaProgressIndicator(size: NbaProgressIndicatorSize.small),
    );
    final errorIndicator = NbaInlineErrorDisplay(
      message: UiStrings.previousGamesLoadError,
      onTap: context.read<T>().retryLoadingFinished,
    );

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
              itemBuilder: (context, item, index) => _buildGameCardWidget(
                context,
                item,
                hideScores,
                state.teamId,
              ),
              firstPageErrorIndicatorBuilder: (_) => errorIndicator,
              newPageErrorIndicatorBuilder: (_) => errorIndicator,
              noItemsFoundIndicatorBuilder: (_) => const SizedBox(height: 16),
              noMoreItemsIndicatorBuilder: (_) => const SizedBox(height: 16),
              firstPageProgressIndicatorBuilder: (_) => progressIndicator,
              newPageProgressIndicatorBuilder: (_) => progressIndicator,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildUpcomingGamesSection(
    BuildContext context,
    DisplayDataState state,
    bool hideScores,
  ) {
    return [
      ..._buildSectionItems(
        UiStrings.sectionUpcomingGames,
        state.upcomingGames,
        hideScores,
        state.teamId,
      ),
      if (state.isLoadingUpcomingGames)
        const Center(
          child: NbaProgressIndicator(size: NbaProgressIndicatorSize.small),
        )
      else if (state.upcomingGamesError != null)
        NbaInlineErrorDisplay(
          message: UiStrings.upcomingGamesLoadError,
          onTap: context.read<T>().retryLoadingUpcoming,
        )
      else if (state.hasHiddenUpcomingGames)
        ExpandUpcomingButtonItem(onPressed: context.read<T>().showAllUpcoming)
      else if (state.upcomingGames.isEmpty)
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text(UiStrings.noUpcomingGamesMessage)),
        )
    ];
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
      child: NbaHeaderItem(text: title),
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
      child: NbaGameCard(
        item: game,
        hideScores: hideScores,
        teamOutcomeId: teamId,
        onTap: () => GameBoxScoreScreen.navigate(context, game.game.id),
      ),
    );
  }

  Widget _buildStandingsCard(
    BuildContext context,
    TeamStandings standings,
  ) {
    return NbaListCard(
      children: [
        Row(
          children: [
            NbaListCardTile(
              child: Text(
                UiStrings.teamRecordFormat(
                  standings.overall.win,
                  standings.overall.loss,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: NbaListCardTile(
                child: Text(
                  UiStrings.conferencePositionCaption(
                    standings.conference.rank,
                    standings.conference.name,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
