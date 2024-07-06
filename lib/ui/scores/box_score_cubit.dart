import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/scores/box_score_models.dart';
import 'package:flutternba/data/scores/box_score_repository.dart';
import 'package:flutternba/data/scores/remote/box_score_response.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/data/standings/standings_repository.dart';
import 'package:flutternba/domain/date/game_time_formatter.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/ui/core/cubit/base_cubit.dart';
import 'package:flutternba/ui/core/cubit/hideable_score_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'box_score_cubit.freezed.dart';
part 'box_score_state.dart';

class GameBoxScoreCubit extends BaseCubit<GameBoxScoreState>
    with HideableScoreCubit {
  final int gameId;
  final BoxScoreRepository _boxScoreRepository;
  final FormatGameTimeUseCase _formatGameTimeUseCase;
  final SettingsRepository _settingsRepository;
  final StandingsRepository _standingsRepository;

  GameBoxScoreCubit(
    this.gameId,
    this._boxScoreRepository,
    this._formatGameTimeUseCase,
    this._settingsRepository,
    this._standingsRepository,
  ) : super(const GameBoxScoreState.loading(null)) {
    disposeControllersOnClose([shouldOverrideHideScores]);
  }

  @override
  Stream<GameBoxScoreState> buildStateStream() {
    return CombineLatestStream.combine3(
      _boxScoreRepository.getBoxScore(gameId),
      _standingsRepository.getAllTeams().asLoadingStream(),
      shouldHideScores(_settingsRepository.shouldHideScores()),
      _mapToState,
    );
  }

  GameBoxScoreState _mapToState(
    Result<GameBoxScoreModel> scoreResult,
    Result<List<TeamStandings>>? standingsResult,
    bool hideScores,
  ) {
    final teamStandingsById =
        standingsResult?.valueOrNull?.associateValuesBy((team) => team.id);

    return scoreResult.fold(
      onSuccess: (boxScoreModel) {
        switch (boxScoreModel) {
          case LoadingBoxScore():
            final gameInfo = boxScoreModel.gameInfo;
            final showGame = gameInfo != null &&
                (gameInfo.status == GameStatus.scheduled || !hideScores);
            return GameBoxScoreState.loading(
              showGame ? _toGameItem(gameInfo, teamStandingsById) : null,
            );
          case ScheduledGame():
            return GameBoxScoreState.scheduled(
              _toGameItem(boxScoreModel.gameInfo, teamStandingsById),
            );
          case HasBoxScore():
            return hideScores
                ? const GameBoxScoreState.hideScoresOn()
                : GameBoxScoreState.hasScore(
                    _toGameItem(boxScoreModel.gameInfo, teamStandingsById),
                    boxScoreModel.home,
                    boxScoreModel.away,
                  );
        }
      },
      onFailure: (_) => const GameBoxScoreState.error(),
    );
  }

  GameItem _toGameItem(Game game, Map<int, TeamStandings>? teamStandingsById) {
    return GameItem(
      game: game,
      formattedDate: _formatGameTimeUseCase(game.displayDate),
      homeTeamRecord: teamStandingsById?[game.homeTeam.id]?.overall,
      visitorTeamRecord: teamStandingsById?[game.visitorTeam.id]?.overall,
    );
  }
}
