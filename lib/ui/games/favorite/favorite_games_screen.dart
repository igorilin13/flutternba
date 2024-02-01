import 'package:flutter/material.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_provider.dart';
import 'package:flutternba/ui/settings/settings_provider.dart';
import 'package:flutternba/ui/util/navigation.dart';
import 'package:provider/provider.dart';

import '../../../common/di/locator.dart';
import '../../../domain/games/game_item.dart';
import '../../settings/settings_state.dart' as settings_state;
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

    return ChangeNotifierProxyProvider<SettingsProvider, FavoriteTeamGamesProvider>(
      create: (context) => FavoriteTeamGamesProvider(locator()),
      update: (_, settings, teamsProvider) {
        if (teamsProvider == null) {
          return FavoriteTeamGamesProvider(locator());
        } else {
          final favoriteTeamState = settings.state.favoriteTeamState;
          if (favoriteTeamState is settings_state.HasFavoriteTeamState) {
            teamsProvider.loadGames(favoriteTeamState.team.id);
          } else {
            teamsProvider.loadGames(null);
          }
          return teamsProvider;
        }
      },
      child: Consumer<FavoriteTeamGamesProvider>(
        builder: (context, provider, child) {
          final hideScores = context.select<SettingsProvider, bool>(
                (value) => value.state.shouldHideScores ?? false,
          );
          return _buildBody(context, provider.state, hideScores);
        },
      ),
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
        return const Center(
          child: ErrorDisplay(message: UiStrings.gameListLoadError),
        );
      case NoGamesAvailableState():
        return const Center(
          child: ErrorDisplay(message: UiStrings.noGamesMessage),
        );
      case NoFavoriteTeamState():
        return _buildNoFavoriteTeamMessage(
          context,
          () => Navigation.openFavoriteTeamSelection(context),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            UiStrings.noFavoriteTeamMessage,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          TextButton(
            onPressed: onSelectClick,
            child: Text(UiStrings.actionSelect.toUpperCase()),
          )
        ],
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
      _HeaderItem(title),
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

class _HeaderItem extends StatelessWidget {
  final String _text;

  const _HeaderItem(this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Text(
        _text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
