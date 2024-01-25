import 'package:flutternba/data/teams/team_model.dart';

class SettingsState {
  final bool? shouldHideScores;
  final FavoriteTeamSettingState favoriteTeamState;

  SettingsState({
    required this.shouldHideScores,
    required this.favoriteTeamState,
  });
}

sealed class FavoriteTeamSettingState {}

class LoadingFavoriteTeamState extends FavoriteTeamSettingState {}

class FavoriteTeamErrorState extends FavoriteTeamSettingState {}

class NoFavoriteTeamState extends FavoriteTeamSettingState {}

class HasFavoriteTeamState extends FavoriteTeamSettingState {
  final Team team;

  HasFavoriteTeamState(this.team);
}
