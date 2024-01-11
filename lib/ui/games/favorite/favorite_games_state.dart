import 'package:flutternba/domain/games/game_item.dart';

sealed class FavoriteTeamGamesState {}

class LoadingState extends FavoriteTeamGamesState {}

class NoFavoriteTeamState extends FavoriteTeamGamesState {}

class NoGamesAvailableState extends FavoriteTeamGamesState {}

class ErrorState extends FavoriteTeamGamesState {}

class DisplayDataState extends FavoriteTeamGamesState {
  final GameItem? nextGame;
  final GameItem? previousGame;
  final List<GameItem> upcomingGames;
  final List<GameItem> previousGames;

  DisplayDataState({
    required this.nextGame,
    required this.previousGame,
    required this.upcomingGames,
    required this.previousGames,
  });
}
