import 'package:flutter/cupertino.dart';
import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/domain/games/favorite/favorite_team_games_result.dart';
import 'package:flutternba/domain/games/favorite/get_favorite_games.dart';

import '../../../domain/games/game_item.dart';
import '../../../domain/games/league/get_league_games.dart';
import 'league_games_state.dart';

class LeagueGamesProvider with ChangeNotifier {
  final GetLeagueGamesUseCase _getLeagueGamesUseCase;

  LeagueGamesState _state = LoadingState();

  LeagueGamesState get state => _state;

  LeagueGamesProvider(this._getLeagueGamesUseCase) {
    loadGames();
  }

  void loadGames() async {
    _state = (await _getLeagueGamesUseCase()).fold(
      onSuccess: (games) {
        if (games.isNotEmpty) {
          return DisplayDataState(games);
        } else {
          return NoGamesAvailableState();
        }
      },
      onFailure: (_) => ErrorState(),
    );
    notifyListeners();
  }
}
