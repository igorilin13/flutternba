import 'package:flutternba/data/standings/standings_repository.dart';
import 'package:flutternba/domain/games/team/team_games_use_case.dart';
import 'package:flutternba/ui/games/team/base/base_team_games_cubit.dart';

import 'base/team_games_state.dart';

class TeamGamesCubit extends BaseTeamGamesCubit<TeamGamesState> {
  final int _teamId;

  TeamGamesCubit(
    this._teamId,
    TeamGamesUseCase getTeamGamesUseCase,
    StandingsRepository standingsRepository,
  ) : super(
          const TeamGamesState.initialLoading(),
          getTeamGamesUseCase,
          standingsRepository,
        );

  @override
  Stream<TeamGamesState> buildStateStream() {
    return buildTeamGamesStateStream(_teamId);
  }
}
