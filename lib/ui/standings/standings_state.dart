part of 'standings_cubit.dart';

@freezed
sealed class StandingsState with _$StandingsState {
  const factory StandingsState.loading({
    required StandingsType type,
  }) = LoadingState;

  const factory StandingsState.hideScoresOn({
    required StandingsType type,
  }) = HideScoresOnState;

  const factory StandingsState.error({
    required StandingsType type,
  }) = ErrorState;

  const factory StandingsState.display({
    required StandingsType type,
    required List<StandingsCollection> collections,
    required int? favoriteTeamId,
  }) = DisplayState;
}
