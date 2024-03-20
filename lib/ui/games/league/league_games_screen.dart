import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/di/locator.dart';
import '../../settings/settings_cubit.dart';
import '../../util/strings.dart';
import '../../util/widgets/error_display.dart';
import '../../util/widgets/game_card.dart';
import 'league_games_cubit.dart';
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

    return BlocProvider(
      create: (context) => LeagueGamesCubit(locator()),
      child: BlocBuilder<LeagueGamesCubit, LeagueGamesState>(
        builder: (context, state) {
          final hideScores = context.select<SettingsCubit, bool>(
            (cubit) => cubit.state.shouldHideScores ?? false,
          );
          return _buildBody(context, state, hideScores);
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
      restorationId: "leagueGames",
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
