import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/teams/team_model.dart';

part 'select_favorite_state.freezed.dart';

@freezed
sealed class SelectFavoriteTeamState with _$SelectFavoriteTeamState {
  const factory SelectFavoriteTeamState.loading() = LoadingState;

  const factory SelectFavoriteTeamState.error() = ErrorState;

  const factory SelectFavoriteTeamState.display(List<Team> teams) =
      DisplayState;
}
