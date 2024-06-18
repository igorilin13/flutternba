part of 'standings_cubit.dart';

@freezed
sealed class StandingsState with _$StandingsState {
  const factory StandingsState.loading() = LoadingState;

  const factory StandingsState.hideScoresOn() = HideScoresOnState;

  const factory StandingsState.error() = ErrorState;

  const factory StandingsState.displayRegSeason({
    required List<StandingsType> availableStandingTypes,
    required StandingsType selectedType,
    required List<StandingsCollection> collections,
    required int? favoriteTeamId,
  }) = DisplayRegSeasonState;

  const factory StandingsState.displayPlayoffs({
    required List<StandingsType> availableStandingTypes,
    required StandingsType selectedType,
    required List<PlayoffRound> rounds,
    required int? favoriteTeamId,
  }) = DisplayPlayoffsState;
}
