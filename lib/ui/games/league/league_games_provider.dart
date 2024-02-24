import 'package:flutter/cupertino.dart';

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
