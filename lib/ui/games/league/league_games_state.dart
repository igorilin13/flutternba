import 'package:flutternba/domain/games/game_item.dart';

sealed class LeagueGamesState {}

class LoadingState extends LeagueGamesState {}

class NoGamesAvailableState extends LeagueGamesState {}

class ErrorState extends LeagueGamesState {}

class DisplayDataState extends LeagueGamesState {
  final List<GameItem> games;

  DisplayDataState(this.games);
}
