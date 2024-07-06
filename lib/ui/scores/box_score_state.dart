part of 'box_score_cubit.dart';

@freezed
sealed class GameBoxScoreState with _$GameBoxScoreState {
  const factory GameBoxScoreState.loading(GameItem? gameItem) = LoadingState;

  const factory GameBoxScoreState.error() = ErrorState;

  const factory GameBoxScoreState.scheduled(GameItem gameItem) =
      ScheduledGameState;

  const factory GameBoxScoreState.hideScoresOn() = HideScoresOnState;

  const factory GameBoxScoreState.hasScore(
    GameItem gameItem,
    TeamBoxScore homeTeam,
    TeamBoxScore awayTeam,
  ) = DisplayScoreState;
}
