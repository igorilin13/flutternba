import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_cubit.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
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
      create: (context) => FavoriteTeamGamesCubit(locator()),
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
    final items = <Widget>[
      if (state.nextGame != null)
        ..._buildSectionItems(
          UiStrings.sectionNextGame,
          [state.nextGame!],
          hideScores,
        ),
      if (state.previousGame != null)
        ..._buildSectionItems(
          UiStrings.sectionPreviousGame,
          [state.previousGame!],
          hideScores,
        ),
      if (state.upcomingGames.isNotEmpty)
        ..._buildSectionItems(
          UiStrings.sectionUpcomingGames,
          state.upcomingGames,
          hideScores,
        ),
      if (state.previousGames.isNotEmpty)
        ..._buildSectionItems(
          UiStrings.sectionPreviousGames,
          state.previousGames,
          hideScores,
        ),
    ];

    return ListView.builder(
      restorationId: "favoriteTeamGames",
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: items[index],
      ),
    );
  }

  List<Widget> _buildSectionItems(
    String title,
    List<GameItem> games,
    bool hideScores,
  ) {
    return [
      HeaderItem(text: title),
      for (var game in games)
        GameCard(
          item: game,
          hideScores: hideScores,
        )
    ];
  }

  @override
  bool get wantKeepAlive => true;
}
