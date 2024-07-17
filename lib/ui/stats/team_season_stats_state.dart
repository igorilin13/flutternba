part of 'team_season_stats_cubit.dart';

@freezed
sealed class TeamSeasonStatsState with _$TeamSeasonStatsState {
  const factory TeamSeasonStatsState.loading() = LoadingState;
  const factory TeamSeasonStatsState.error() = ErrorState;
  const factory TeamSeasonStatsState.hideScores() = HideScoresState;
  const factory TeamSeasonStatsState.displayData({
    required List<LeagueStatRanking> categories,
    required int displayedTeamsCount,
  }) = DisplayDataState;
}
