import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/domain/games/favorite/get_favorite_games.dart';

import '../../../domain/games/favorite/favorite_team_games.dart';
import '../../../domain/games/game_item.dart';
import '../../util/bloc/base_cubit.dart';
import 'favorite_games_state.dart';

class FavoriteTeamGamesCubit extends BaseCubit<FavoriteTeamGamesState> {
  static const int _maxDisplayedUpcomingGames = 5;

  final GetFavoriteTeamGamesUseCase _getFavoriteTeamGamesUseCase;

  FavoriteTeamGamesCubit(
    this._getFavoriteTeamGamesUseCase,
  ) : super(const FavoriteTeamGamesState.loading());

  @override
  Stream<FavoriteTeamGamesState> buildStateStream() {
    return _getFavoriteTeamGamesUseCase().map((event) => switch (event) {
          NoFavoriteTeam() => const FavoriteTeamGamesState.noFavorite(),
          HasFavoriteTeam() => event.games?.fold(
                onSuccess: (games) => createDisplayDataState(games),
                onFailure: (_) => const FavoriteTeamGamesState.error(),
              ) ??
              const FavoriteTeamGamesState.loading(),
        });
  }

  FavoriteTeamGamesState createDisplayDataState(List<GameItem> games) {
    if (games.isEmpty) {
      return const FavoriteTeamGamesState.noGamesAvailable();
    }

    final pastGames = games.filterList(
      (element) => element.game.gameStatus == GameStatus.finished,
    );
    pastGames.sortByDescending((item) => item.game.date);

    final upcomingGames = games.filterList(
      (element) => element.game.gameStatus != GameStatus.finished,
    );

    return DisplayDataState(
      nextGame: upcomingGames.getOrNull(0),
      previousGame: pastGames.getOrNull(0),
      upcomingGames: upcomingGames.takeList(_maxDisplayedUpcomingGames),
      previousGames: pastGames,
    );
  }
}
