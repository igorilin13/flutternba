import 'package:flutter/material.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_provider.dart';
import 'package:flutternba/ui/util/widgets/system_overlay.dart';
import 'package:provider/provider.dart';

import '../../../common/di/locator.dart';
import '../../../domain/games/game_item.dart';
import '../../util/strings.dart';
import '../../util/widgets/error_display.dart';
import '../../util/widgets/game_card.dart';
import 'favorite_games_state.dart';

class FavoriteTeamGamesScreen extends StatefulWidget {
  final VoidCallback onSelectFavoriteClick;

  const FavoriteTeamGamesScreen({
    super.key,
    required this.onSelectFavoriteClick,
  });

  @override
  State<FavoriteTeamGamesScreen> createState() =>
      _FavoriteTeamGamesScreenState();
}

class _FavoriteTeamGamesScreenState extends State<FavoriteTeamGamesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (context) => FavoriteTeamGamesProvider(locator()),
      child: Consumer<FavoriteTeamGamesProvider>(
        builder: (context, provider, child) {
          final state = provider.state;
          return _buildBody(context, state);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, FavoriteTeamGamesState state) {
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
          widget.onSelectFavoriteClick,
        );
      case DisplayDataState():
        return _buildGameList(context, state);
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

  Widget _buildGameList(BuildContext context, DisplayDataState state) {
    final items = <Widget>[
      if (state.nextGame != null)
        ..._buildSectionItems(
          UiStrings.sectionNextGame,
          [state.nextGame!],
        ),
      if (state.previousGame != null)
        ..._buildSectionItems(
          UiStrings.sectionPreviousGame,
          [state.previousGame!],
        ),
      if (state.upcomingGames.isNotEmpty)
        ..._buildSectionItems(
          UiStrings.sectionUpcomingGames,
          state.upcomingGames,
        ),
      if (state.previousGames.isNotEmpty)
        ..._buildSectionItems(
          UiStrings.sectionPreviousGames,
          state.previousGames,
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

  List<Widget> _buildSectionItems(String title, List<GameItem> games) {
    return [_HeaderItem(title), for (var game in games) GameCard(item: game)];
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
