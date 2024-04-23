import 'package:flutternba/domain/games/team/favorite/favorite_team_games.dart';
import 'package:flutternba/domain/games/team/favorite/get_favorite_games.dart';
import 'package:flutternba/domain/standings/get_standings.dart';
import 'package:flutternba/ui/games/team/base/base_team_games_cubit.dart';
import 'package:flutternba/ui/games/team/favorite/favorite_games_state.dart';
import 'package:rxdart/rxdart.dart';

class FavoriteTeamGamesCubit
    extends BaseTeamGamesCubit<FavoriteTeamGamesState> {
  final GetFavoriteTeamGamesUseCase _getFavoriteTeamGamesUseCase;

  FavoriteTeamGamesCubit(
    this._getFavoriteTeamGamesUseCase,
    GetStandingsUseCase getStandingsUseCase,
  ) : super(const FavoriteTeamGamesState.loading(), getStandingsUseCase);

  @override
  Stream<FavoriteTeamGamesState> buildStateStream() {
    return _getFavoriteTeamGamesUseCase().switchMap((loadResult) {
      return switch (loadResult) {
        NoFavoriteTeam() =>
          Stream.value(const FavoriteTeamGamesState.noFavorite()),
        HasFavoriteTeam() => buildTeamGamesStateStream(
            teamId: loadResult.teamId,
            gamesStream: Stream.value(loadResult.games),
          ).map((event) => FavoriteTeamGamesState.hasFavorite(event)),
      };
    });
  }
}
