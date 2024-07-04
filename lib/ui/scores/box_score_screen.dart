import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/ui/core/components/app_bar.dart';
import 'package:flutternba/ui/core/components/cta_message.dart';
import 'package:flutternba/ui/core/components/error_display.dart';
import 'package:flutternba/ui/core/components/game_card.dart';
import 'package:flutternba/ui/core/components/progress_indicator.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/scores/box_score_cubit.dart';
import 'package:flutternba/ui/scores/widgets/player_stats_widget.dart';

import 'widgets/team_stats_widget.dart';

class GameBoxScoreScreen extends StatelessWidget {
  final int gameId;

  const GameBoxScoreScreen({super.key, required this.gameId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameBoxScoreCubit(
        gameId,
        locator(),
        locator(),
        locator(),
      ),
      child: BlocBuilder<GameBoxScoreCubit, GameBoxScoreState>(
        builder: (context, state) {
          return Scaffold(
            appBar: NbaAppBar(title: _getAppBarTitle(state)),
            body: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: _buildContent(context, state),
            ),
          );
        },
      ),
    );
  }

  Widget? _getAppBarTitle(GameBoxScoreState state) {
    final Game? game;
    if (state is ScheduledGameState) {
      game = state.gameItem.game;
    } else if (state is DisplayScoreState) {
      game = state.gameItem.game;
    } else {
      game = null;
    }
    return game != null
        ? Text(
            UiStrings.matchupTitle(game.homeTeam.name, game.visitorTeam.name),
          )
        : null;
  }

  Widget _buildContent(BuildContext context, GameBoxScoreState state) {
    switch (state) {
      case LoadingState():
        return const Center(child: NbaProgressIndicator());
      case ErrorState():
        return Center(
          child: NbaErrorDisplay(
            message: UiStrings.boxScoreLoadError,
            onTap: context.read<GameBoxScoreCubit>().retryLoading,
          ),
        );
      case ScheduledGameState():
        return Column(
          children: [
            NbaGameCard(item: state.gameItem, hideScores: false),
            const Expanded(
              child: Center(child: Text(UiStrings.boxScoreGameNotStarted)),
            )
          ],
        );
      case HideScoresOnState():
        return Center(
          child: NbaActionMessage(
            message: UiStrings.boxScoreHideScoreOnMessage,
            actionText: UiStrings.actionRevealBoxScore,
            icon: Icons.check,
            onAction: context.read<GameBoxScoreCubit>().overrideHideScores,
          ),
        );
      case DisplayScoreState():
        return _buildBoxScore(context, state);
    }
  }

  Widget _buildBoxScore(BuildContext context, DisplayScoreState state) {
    const spacer = SizedBox(height: 12);
    return SingleChildScrollView(
      child: Column(
        children: [
          NbaGameCard(item: state.gameItem, hideScores: false),
          spacer,
          GameTeamStats(home: state.homeTeam.team, away: state.awayTeam.team),
          spacer,
          GamePlayerStats(
            team: state.gameItem.game.homeTeam,
            players: state.homeTeam.players,
          ),
          spacer,
          GamePlayerStats(
            team: state.gameItem.game.visitorTeam,
            players: state.awayTeam.players,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  static void navigate(BuildContext context, int gameId) {
    Navigator.restorablePush(context, _buildRoute, arguments: gameId);
  }

  @pragma('vm:entry-point')
  static Route<void> _buildRoute(
    BuildContext context,
    Object? arguments,
  ) {
    final gameId = arguments as int;
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => GameBoxScoreScreen(gameId: gameId),
    );
  }
}
