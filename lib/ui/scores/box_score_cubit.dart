import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/scores/box_score_models.dart';
import 'package:flutternba/data/scores/box_score_repository.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/domain/date/game_time_formatter.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/ui/util/bloc/base_cubit.dart';
import 'package:flutternba/ui/util/bloc/hideable_score_cubit.dart';
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

  GameBoxScoreCubit(
    this.gameId,
    this._boxScoreRepository,
    this._formatGameTimeUseCase,
    this._settingsRepository,
  ) : super(const GameBoxScoreState.loading()) {
    disposeControllersOnClose([shouldOverrideHideScores]);
  }

  @override
  Stream<GameBoxScoreState> buildStateStream() {
    return CombineLatestStream.combine2(
      _boxScoreRepository
          .getBoxScore(gameId)
          .asNullableStream()
          .startWith(null),
      shouldHideScores(_settingsRepository.shouldHideScores()),
      _mapToState,
    );
  }

  GameBoxScoreState _mapToState(
    Result<GameBoxScore>? loadResult,
    bool hideScores,
  ) {
    if (loadResult == null) {
      return const GameBoxScoreState.loading();
    }

    return loadResult.fold(
      onSuccess: (boxScore) {
        final game = boxScore.game;
        final gameItem = GameItem(
          game: game,
          formattedDate: _formatGameTimeUseCase(game.displayDate),
          homeTeamRecord: boxScore.home?.record,
          visitorTeamRecord: boxScore.away?.record,
        );
        if (boxScore.home != null && boxScore.away != null) {
          if (hideScores) {
            return const GameBoxScoreState.hideScoresOn();
          }
          return GameBoxScoreState.hasScore(
            gameItem,
            boxScore.home!,
            boxScore.away!,
          );
        } else {
          return GameBoxScoreState.scheduled(gameItem);
        }
      },
      onFailure: (_) => const GameBoxScoreState.error(),
    );
  }
}
