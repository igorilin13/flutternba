import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/standings/playoffs/playoff_models.dart';
import 'package:flutternba/data/standings/playoffs/playoffs_repository.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/data/standings/standings_repository.dart';
import 'package:flutternba/domain/standings/standings_model.dart';
import 'package:flutternba/domain/standings/standings_use_case.dart';
import 'package:flutternba/ui/util/bloc/base_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'standings_cubit.freezed.dart';
part 'standings_state.dart';

class StandingsCubit extends BaseCubit<StandingsState> {
  final SettingsRepository _settingsRepository;
  final MakeStandingsUseCase _makeStandingsUseCase;
  final StandingsRepository _standingsRepository;
  final PlayoffsRepository _playoffsRepository;

  final BehaviorSubject<StandingsType> _standingsType =
      BehaviorSubject.seeded(StandingsType.conference);
  final BehaviorSubject<bool> _overrideHideScores =
      BehaviorSubject.seeded(false);

  StandingsCubit(
    this._settingsRepository,
    this._standingsRepository,
    this._makeStandingsUseCase,
    this._playoffsRepository,
  ) : super(const StandingsState.loading()) {
    disposeControllersOnClose([_standingsType, _overrideHideScores]);
  }

  @override
  Stream<StandingsState> buildStateStream() {
    final isHideScoresOn = CombineLatestStream.combine2(
      _settingsRepository.shouldHideScores(),
      _overrideHideScores,
      (setting, override) => setting && !override,
    );

    return CombineLatestStream.combine5(
      _standingsRepository.getAllTeams().asNullableStream().startWith(null),
      _playoffsRepository.getPlayoffRounds().asNullableStream().startWith(null),
      _standingsType,
      isHideScoresOn,
      _settingsRepository.getFavoriteTeamId(),
      _mapToState,
    );
  }

  StandingsState _mapToState(
    Result<List<TeamStandings>>? standingsResult,
    Result<List<PlayoffRound>>? playoffsResult,
    StandingsType type,
    bool hideScores,
    int? favoriteTeamId,
  ) {
    if (standingsResult == null) {
      return const StandingsState.loading();
    }

    return standingsResult.fold(
      onSuccess: (teams) {
        if (hideScores) {
          return const StandingsState.hideScoresOn();
        }

        final hasPlayoffs = playoffsResult?.valueOrNull?.isNotEmpty == true;
        final availableStandingTypes = [
          if (hasPlayoffs) StandingsType.playoffs,
          StandingsType.conference,
          StandingsType.division,
        ];

        switch (type) {
          case StandingsType.playoffs when hasPlayoffs:
            return StandingsState.displayPlayoffs(
              selectedType: type,
              availableStandingTypes: availableStandingTypes,
              rounds: playoffsResult?.valueOrNull?.reversed.toList() ?? [],
              favoriteTeamId: favoriteTeamId,
            );
          default:
            return StandingsState.displayRegSeason(
              selectedType: type,
              availableStandingTypes: availableStandingTypes,
              collections: _makeStandingsUseCase(
                teams,
                type,
                favoriteTeamId,
              ),
              favoriteTeamId: favoriteTeamId,
            );
        }
      },
      onFailure: (error) => const StandingsState.error(),
    );
  }

  void changeType(StandingsType type) {
    _standingsType.value = type;
  }

  void overrideHideScores() {
    _overrideHideScores.value = true;
  }
}
