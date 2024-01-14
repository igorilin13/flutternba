import 'package:flutter/cupertino.dart';
import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/domain/games/favorite_team_games.dart';
import 'package:flutternba/domain/games/get_favorite_games.dart';

import '../../../domain/games/game_item.dart';
import 'favorite_games_state.dart';

class FavoriteTeamGamesProvider with ChangeNotifier {
  static const int _maxDisplayedUpcomingGames = 5;

  final GetFavoriteTeamGamesUseCase _getFavoriteTeamGamesUseCase;

  FavoriteTeamGamesState _state = LoadingState();

  FavoriteTeamGamesState get state => _state;

  FavoriteTeamGamesProvider(this._getFavoriteTeamGamesUseCase) {
    loadGames();
  }

  void loadGames() async {
    switch (await _getFavoriteTeamGamesUseCase()) {
      case NoFavoriteTeam():
        _state = NoFavoriteTeamState();
      case HasFavoriteTeam result:
        _state = result.games.fold(
          onSuccess: (games) {
            if (games.isNotEmpty) {
              return createDisplayDataState(games);
            } else {
              return NoGamesAvailableState();
            }
          },
          onFailure: (_) => ErrorState(),
        );
    }
    notifyListeners();
  }

  DisplayDataState createDisplayDataState(List<GameItem> games) {
    final pastGames = games.filterList(
        (element) => element.game.gameStatus == GameStatus.finished);
    pastGames.sortByDescending((item) => item.game.date);

    final upcomingGames = games.filterList(
        (element) => element.game.gameStatus != GameStatus.finished);

    return DisplayDataState(
      nextGame: upcomingGames.getOrNull(0),
      previousGame: pastGames.getOrNull(0),
      upcomingGames: upcomingGames.takeList(_maxDisplayedUpcomingGames),
      previousGames: pastGames,
    );
  }
}
