import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_cubit.dart';
import 'package:flutternba/ui/games/favorite/widgets/TeamPageHeader.dart';
import 'package:flutternba/ui/games/favorite/widgets/TeamTidbitCard.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
import 'package:flutternba/ui/util/colors.dart';
import 'package:flutternba/ui/util/widgets/cta_message.dart';
import 'package:flutternba/ui/util/widgets/header_item.dart';

import '../../../common/di/locator.dart';
import '../../../domain/games/game_item.dart';
import '../../favorite/change/change_favorite_screen.dart';
import '../../util/strings.dart';
import '../../util/widgets/error_display.dart';
import '../../util/widgets/game_card.dart';
import 'favorite_games_state.dart';

class FavoriteTeamGamesScreen extends StatefulWidget {
  const FavoriteTeamGamesScreen({super.key});

  @override
  State<FavoriteTeamGamesScreen> createState() =>
      _FavoriteTeamGamesScreenState();
}

class _FavoriteTeamGamesScreenState extends State<FavoriteTeamGamesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider(
      create: (context) => FavoriteTeamGamesCubit(locator(), locator()),
      child: BlocBuilder<FavoriteTeamGamesCubit, FavoriteTeamGamesState>(
          builder: (context, state) {
        final hideScores = context.select<SettingsCubit, bool>(
          (cubit) => cubit.state.shouldHideScores ?? false,
        );
        return _buildBody(context, state, hideScores);
      }),
    );
  }

  Widget _buildBody(
    BuildContext context,
    FavoriteTeamGamesState state,
    bool hideScores,
  ) {
    switch (state) {
      case LoadingState():
        return const Center(child: CircularProgressIndicator());
      case ErrorState():
        return Center(
          child: ErrorDisplay(
            message: UiStrings.gameListLoadError,
            onTap: context.read<FavoriteTeamGamesCubit>().retryLoading,
          ),
        );
      case NoGamesAvailableState():
        return const Center(
          child: ErrorDisplay(
            message: UiStrings.noGamesMessage,
            icon: Icons.event_busy,
          ),
        );
      case NoFavoriteTeamState():
        return _buildNoFavoriteTeamMessage(
          context,
          () => ChangeFavoriteTeamScreen.navigate(context),
        );
      case DisplayDataState():
        return _buildGameList(context, state, hideScores);
    }
  }

  Widget _buildNoFavoriteTeamMessage(
    BuildContext context,
    VoidCallback onSelectClick,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ActionMessageDisplay(
          message: UiStrings.noFavoriteTeamMessage,
          onAction: onSelectClick,
          actionText: UiStrings.actionChooseTeam,
          icon: Icons.favorite_border,
        ),
      ),
    );
  }

  Widget _buildGameList(
    BuildContext context,
    DisplayDataState state,
    bool hideScores,
  ) {
    final teamStandings = state.standings?.getOrNull();
    final items = <Widget>[
      if (teamStandings != null && !hideScores)
        ..._buildStandingsSection(context, teamStandings),
      if (state.nextGame != null)
        ..._buildSectionItems(
          UiStrings.sectionNextGame,
          [state.nextGame!],
          hideScores,
          state.favoriteTeamId,
        ),
      if (state.previousGame != null)
        ..._buildSectionItems(
          UiStrings.sectionPreviousGame,
          [state.previousGame!],
          hideScores,
          state.favoriteTeamId,
        ),
      if (state.upcomingGames.isNotEmpty)
        ..._buildSectionItems(
          UiStrings.sectionUpcomingGames,
          state.upcomingGames,
          hideScores,
          state.favoriteTeamId,
        ),
      if (state.hasHiddenUpcomingGames) const _ExpandUpcomingButtonItem(),
      if (state.previousGames.isNotEmpty)
        ..._buildSectionItems(
          UiStrings.sectionPreviousGames,
          state.previousGames,
          hideScores,
          state.favoriteTeamId,
        ),
    ];

    return ListView.builder(
      restorationId: "favoriteTeamGames",
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
  ) {
    return [
      Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: TeamPageHeader(
          teamId: standings.teamId,
          teamName: standings.fullTeamName,
        ),
      ),
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

  @override
  bool get wantKeepAlive => true;
}

class _ExpandUpcomingButtonItem extends StatelessWidget {
  const _ExpandUpcomingButtonItem();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: TextButton(
          onPressed: context.read<FavoriteTeamGamesCubit>().showAllUpcoming,
          child: Text(UiStrings.actionShowAll),
        ),
      ),
    );
  }
}
