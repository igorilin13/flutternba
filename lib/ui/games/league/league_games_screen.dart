import 'package:flutter/material.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_provider.dart';
import 'package:flutternba/ui/util/widgets/system_overlay.dart';
import 'package:provider/provider.dart';

import '../../../common/di/locator.dart';
import '../../settings/settings_provider.dart';
import '../../util/strings.dart';
import '../../util/widgets/error_display.dart';
import '../../util/widgets/game_card.dart';
import 'league_games_provider.dart';
import 'league_games_state.dart';

class LeagueGamesScreen extends StatefulWidget {
  const LeagueGamesScreen({super.key});

  @override
  State<LeagueGamesScreen> createState() => _LeagueGamesScreenState();
}

class _LeagueGamesScreenState extends State<LeagueGamesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (context) => LeagueGamesProvider(locator()),
      child: Consumer<LeagueGamesProvider>(
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
    LeagueGamesState state,
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
      case DisplayDataState():
        return _buildGameList(context, state, hideScores);
    }
  }

  Widget _buildGameList(
    BuildContext context,
    DisplayDataState state,
    bool hideScores,
  ) {
    final items = state.games;
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length + 1,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: index > 0
            ? GameCard(item: items[index - 1], hideScores: hideScores)
            : Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  UiStrings.titleToday,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
