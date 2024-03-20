import '../../../domain/games/league/get_league_games.dart';
import '../../util/bloc/base_bloc.dart';
import 'league_games_state.dart';

class LeagueGamesCubit extends BaseCubit<LeagueGamesState> {
  final GetLeagueGamesUseCase _getLeagueGamesUseCase;

  LeagueGamesCubit(this._getLeagueGamesUseCase)
      : super(const LeagueGamesState.loading()) {
    loadGames();
  }

  void loadGames() async {
    final newState = (await _getLeagueGamesUseCase()).fold(
      onSuccess: (games) {
        if (games.isNotEmpty) {
          return LeagueGamesState.displayData(games);
        } else {
          return const LeagueGamesState.noGamesAvailable();
        }
      },
      onFailure: (_) => const LeagueGamesState.error(),
    );
    emit(newState);
  }
}
