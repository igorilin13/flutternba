import 'package:flutternba/data/teams/team_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  static const initial = SettingsState(
    shouldHideScores: null,
    favoriteTeamState: LoadingFavoriteTeamState(),
    gameRemindersState: GameRemindersSettingState.initial,
  );

  const factory SettingsState({
    required bool? shouldHideScores,
    required FavoriteTeamSettingState favoriteTeamState,
    required GameRemindersSettingState gameRemindersState,
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

@freezed
class GameRemindersSettingState with _$GameRemindersSettingState {
  static const initial = GameRemindersSettingState(
    isAvailable: false,
    isTurnedOn: false,
    isSaving: false,
  );

  const factory GameRemindersSettingState({
    required bool isAvailable,
    required bool isTurnedOn,
    required bool isSaving,
  }) = _GameRemindersSettingState;
}
