import 'package:flutternba/data/teams/team_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  static const initial = SettingsState(
    shouldHideScores: null,
    favoriteTeamState: LoadingFavoriteTeamState(),
  );

  const factory SettingsState({
    required bool? shouldHideScores,
    required FavoriteTeamSettingState favoriteTeamState,
  }) = _SettingsState;
}

@freezed
sealed class FavoriteTeamSettingState with _$FavoriteTeamSettingState {
  const factory FavoriteTeamSettingState.loading() = LoadingFavoriteTeamState;
  const factory FavoriteTeamSettingState.error() = FavoriteTeamErrorState;
  const factory FavoriteTeamSettingState.noFavorite() = NoFavoriteTeamState;
  const factory FavoriteTeamSettingState.hasFavorite(Team team) =
      HasFavoriteTeamState;
}
