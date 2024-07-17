import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/domain/games/playoffs/playoff_series_model.dart';
import 'package:flutternba/ui/core/components/app_bar.dart';
import 'package:flutternba/ui/core/components/error_display.dart';
import 'package:flutternba/ui/core/components/game_card.dart';
import 'package:flutternba/ui/core/components/header_item.dart';
import 'package:flutternba/ui/core/components/list_card.dart';
import 'package:flutternba/ui/core/components/progress_indicator.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/playoffs/playoff_series_cubit.dart';
import 'package:flutternba/ui/scores/box_score_screen.dart';

class PlayoffSeriesScreen extends StatelessWidget {
  final int roundId;
  final String seriesId;

  const PlayoffSeriesScreen({
    super.key,
    required this.roundId,
    required this.seriesId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => PlayoffSeriesCubit(seriesId, locator()),
      child: BlocBuilder<PlayoffSeriesCubit, PlayoffSeriesState>(
        builder: (context, state) {
          return Scaffold(
            appBar: _buildAppBar(context, state),
            body: _buildBody(context, state),
          );
        },
      ),
    );
  }

  NbaAppBar _buildAppBar(BuildContext context, PlayoffSeriesState state) {
    String? title;
    if (state is DisplayDataState) {
      title = UiStrings.matchupTitle(
        state.series.homeTeam.name,
        state.series.visitorTeam.name,
      );
    }
    return NbaAppBar(title: title != null ? Text(title) : null);
  }

  Widget _buildBody(BuildContext context, PlayoffSeriesState state) {
    switch (state) {
      case LoadingState():
        return const Center(child: NbaProgressIndicator());
      case ErrorState():
        return Center(
          child: NbaErrorDisplay(
            message: UiStrings.playoffSeriesLoadError,
            onTap: context.read<PlayoffSeriesCubit>().retryLoading,
          ),
        );
      case DisplayDataState():
        final series = state.series;
        return ListView.builder(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          itemCount: series.items.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return _buildOverviewCard(context, series);
            }
            final playoffGame = series.items[index - 1];
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NbaHeaderItem(
                    text: UiStrings.playoffGameTitle(playoffGame.gameNumber),
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      left: 4,
                      top: 12,
                    ),
                  ),
                  NbaGameCard(
                    item: playoffGame.item,
                    hideScores: false,
                    onTap: () => GameBoxScoreScreen.navigate(
                      context,
                      playoffGame.item.game.id,
                    ),
                  ),
                ],
              ),
            );
          },
        );
    }
  }

  Widget _buildOverviewCard(BuildContext context, PlayoffSeriesGames series) {
    final String text;
    if (series.homeTeamWins == series.visitorTeamWins) {
      text = UiStrings.playoffSeriesTied(series.homeTeamWins);
    } else if (series.homeTeamWins > series.visitorTeamWins) {
      text = UiStrings.playoffSeriesLeader(
        series.homeTeam.abbreviation,
        series.homeTeamWins,
        series.visitorTeamWins,
        series.isFinished,
      );
    } else {
      text = UiStrings.playoffSeriesLeader(
        series.visitorTeam.abbreviation,
        series.visitorTeamWins,
        series.homeTeamWins,
        series.isFinished,
      );
    }
    return NbaListCard(
      children: [
        Row(
          children: [
            NbaListCardTile(
              child: Text(UiStrings.playoffRoundNameShort(roundId)),
            ),
            const SizedBox(width: 8),
            Expanded(child: NbaListCardTile(child: Text(text))),
          ],
        )
      ],
    );
  }

  static void navigate(BuildContext context, int roundId, String seriesId) {
    Navigator.restorablePush(
      context,
      _buildRoute,
      arguments: [roundId, seriesId],
    );
  }

  @pragma('vm:entry-point')
  static Route<void> _buildRoute(
    BuildContext context,
    Object? arguments,
  ) {
    final argList = arguments as List;
    final roundId = argList[0] as int;
    final seriesId = arguments[1] as String;
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => PlayoffSeriesScreen(
        roundId: roundId,
        seriesId: seriesId,
      ),
    );
  }
}
