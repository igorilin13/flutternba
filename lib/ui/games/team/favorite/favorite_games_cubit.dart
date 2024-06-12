import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/domain/games/team/team_games_use_case.dart';
import 'package:flutternba/domain/standings/standings_use_case.dart';
import 'package:flutternba/ui/games/team/base/base_team_games_cubit.dart';
import 'package:flutternba/ui/games/team/favorite/favorite_games_state.dart';
import 'package:rxdart/rxdart.dart';

class FavoriteTeamGamesCubit
    extends BaseTeamGamesCubit<FavoriteTeamGamesState> {
  final SettingsRepository _settingsRepository;

  FavoriteTeamGamesCubit(
    this._settingsRepository,
    TeamGamesUseCase getTeamGamesUseCase,
    StandingsUseCase getStandingsUseCase,
  ) : super(
          const FavoriteTeamGamesState.loading(),
          getTeamGamesUseCase,
          getStandingsUseCase,
        );

  @override
  Stream<FavoriteTeamGamesState> buildStateStream() {
    return _settingsRepository.getFavoriteTeamId().switchMap((favoriteId) {
      if (favoriteId != null) {
        return buildTeamGamesStateStream(favoriteId)
            .map((event) => FavoriteTeamGamesState.hasFavorite(event));
      } else {
        return Stream.value(const FavoriteTeamGamesState.noFavorite());
      }
    });
  }
}
