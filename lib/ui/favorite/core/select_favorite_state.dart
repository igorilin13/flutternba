import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/teams/team_model.dart';

part 'select_favorite_state.freezed.dart';

@freezed
sealed class SelectFavoriteTeamState with _$SelectFavoriteTeamState {
  const factory SelectFavoriteTeamState.loading({
    @Default(false) bool selectionComplete,
  }) = LoadingState;

  const factory SelectFavoriteTeamState.error({
    @Default(false) bool selectionComplete,
  }) = ErrorState;

  const factory SelectFavoriteTeamState.display({
    required List<Team> teams,
    required bool selectionComplete,
  }) = DisplayState;
}
