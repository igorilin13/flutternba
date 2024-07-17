part of 'team_stat_category_screen_cubit.dart';

@freezed
sealed class TeamStatCategoryState with _$TeamStatCategoryState {
  const factory TeamStatCategoryState.loading() = LoadingState;

  const factory TeamStatCategoryState.error() = ErrorState;

  const factory TeamStatCategoryState.displayData(
    LeagueStatRanking ranking,
  ) = DisplayDataState;
}
