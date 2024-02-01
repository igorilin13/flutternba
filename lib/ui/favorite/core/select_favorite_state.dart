import '../../../data/teams/team_model.dart';

sealed class SelectFavoriteTeamState {
  bool get hasSelection;
}

class LoadingState extends SelectFavoriteTeamState {
  @override
  bool get hasSelection => false;
}

class ErrorState extends SelectFavoriteTeamState {
  @override
  bool get hasSelection => false;
}

class DisplayState extends SelectFavoriteTeamState {
  final List<Team> teams;
  final int? selectedId;

  DisplayState({required this.teams, required this.selectedId});

  @override
  bool get hasSelection => selectedId != null;
}

sealed class SelectFavoriteTeamEvent {}

class FavoriteTeamSelectionComplete extends SelectFavoriteTeamEvent {
  final int? teamId;

  FavoriteTeamSelectionComplete(this.teamId);
}