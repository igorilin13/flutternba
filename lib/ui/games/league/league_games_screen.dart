import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/ui/core/components/error_display.dart';
import 'package:flutternba/ui/core/components/game_card.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/games/league/widgets/games_date_control.dart';
import 'package:flutternba/ui/scores/box_score_screen.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';

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
      create: (context) => LeagueGamesCubit(locator(), locator()),
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
        return _buildNonDisplayState(
          context: context,
          state: state,
          child: const CircularProgressIndicator(),
        );
      case ErrorState():
        return _buildNonDisplayState(
          context: context,
          state: state,
          child: NbaErrorDisplay(
            message: UiStrings.gameListLoadError,
            onTap: context.read<LeagueGamesCubit>().retryLoading,
          ),
        );
      case NoGamesAvailableState():
        return _buildNonDisplayState(
          context: context,
          state: state,
          child: const NbaErrorDisplay(
            message: UiStrings.noGamesMessage,
            icon: Icons.calendar_today,
          ),
        );
      case DisplayDataState():
        return _buildGameList(context, state, hideScores);
    }
  }

  Widget _buildNonDisplayState({
    required BuildContext context,
    required LeagueGamesState state,
    required Widget child,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildDateControl(context, state),
          Expanded(child: Center(child: child)),
        ],
      ),
    );
  }

  Widget _buildGameList(
    BuildContext context,
    DisplayDataState state,
    bool hideScores,
  ) {
    final items = state.games;
    return ListView.builder(
      restorationId: "leagueGames",
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
      itemCount: items.length + 1,
      itemBuilder: (context, index) {
        final Widget content;
        if (index > 0) {
          final item = items[index - 1];
          content = NbaGameCard(
            item: item,
            hideScores: hideScores,
            onTap: () => GameBoxScoreScreen.navigate(context, item.game.id),
          );
        } else {
          content = _buildDateControl(context, state);
        }

        return Padding(
          padding: EdgeInsets.only(bottom: index > 0 ? 12 : 0),
          child: content,
        );
      },
    );
  }

  Widget _buildDateControl(BuildContext context, LeagueGamesState state) {
    return GamesDateControl(
      datesModel: state.datesModel,
      onPreviousTap: context.read<LeagueGamesCubit>().selectPreviousDay,
      onNextTap: context.read<LeagueGamesCubit>().selectNextDay,
      onDateSelected: context.read<LeagueGamesCubit>().selectDate,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
