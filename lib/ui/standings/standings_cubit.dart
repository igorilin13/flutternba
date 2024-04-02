import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/bool_ext.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/domain/standings/get_standings.dart';
import 'package:flutternba/domain/standings/standings_model.dart';
import 'package:flutternba/ui/util/bloc/base_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'standings_cubit.freezed.dart';
part 'standings_state.dart';

class StandingsCubit extends BaseCubit<StandingsState> {
  final SettingsRepository _settingsRepository;
  final GetStandingsUseCase _standingsUseCase;
  final BehaviorSubject<StandingsType> _standingsType =
      BehaviorSubject.seeded(StandingsType.conference);
  final BehaviorSubject<bool> _overrideHideScores =
      BehaviorSubject.seeded(false);

  StandingsCubit(
    this._settingsRepository,
    this._standingsUseCase,
  ) : super(const StandingsState.loading(type: StandingsType.conference)) {
    disposeControllersOnClose([_standingsType, _overrideHideScores]);
  }

  @override
  Stream<StandingsState> buildStateStream() {
    final loadStandings = _standingsType.switchMap(
      (type) => _standingsUseCase
          .getStandings(type)
          .asNullableStream()
          .startWith(null),
    );

    final isHideScoresOn = CombineLatestStream.combine2(
      _settingsRepository.shouldHideScores(),
      _overrideHideScores,
      (setting, override) => setting && !override,
    );

    return CombineLatestStream.combine4(
      loadStandings,
      _standingsType,
      isHideScoresOn,
      _settingsRepository.getFavoriteTeamId(),
      _mapToState,
    );
  }

  StandingsState _mapToState(
    Result<List<StandingsCollection>>? loadResult,
    StandingsType type,
    bool hideScores,
    int? favoriteTeamId,
  ) {
    if (loadResult == null) {
      return StandingsState.loading(type: type);
    }
    return loadResult.fold(
      onSuccess: (collections) {
        if (hideScores) {
          return StandingsState.hideScoresOn(type: type);
        }

        final sortedWithFavoriteFirst = collections
            .mapList(
              (item) => item.copyWith(
                groups: item.groups.sortedByDescending(
                  (item) => item.teamIds.contains(favoriteTeamId).asInt,
                ),
              ),
            )
            .sortedByDescending(
              (item) => item.teamIds.contains(favoriteTeamId).asInt,
            );

        return StandingsState.display(
          type: type,
          collections: sortedWithFavoriteFirst,
          favoriteTeamId: favoriteTeamId,
        );
      },
      onFailure: (error) => StandingsState.error(type: type),
    );
  }

  void changeType(StandingsType type) {
    _standingsType.value = type;
  }

  void overrideHideScores() {
    _overrideHideScores.value = true;
  }
}
