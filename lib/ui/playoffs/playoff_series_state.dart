part of 'playoff_series_cubit.dart';

@freezed
sealed class PlayoffSeriesState with _$PlayoffSeriesState {
  const factory PlayoffSeriesState.loading() = LoadingState;

  const factory PlayoffSeriesState.error() = ErrorState;

  const factory PlayoffSeriesState.display(
    PlayoffSeriesGames series,
  ) = DisplayDatastate;
}
