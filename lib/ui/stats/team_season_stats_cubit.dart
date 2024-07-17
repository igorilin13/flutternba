import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/domain/teams/stats/get_team_season_stats.dart';
import 'package:flutternba/domain/teams/stats/team_season_stats_models.dart';
import 'package:flutternba/ui/core/cubit/base_cubit.dart';
import 'package:flutternba/ui/core/cubit/hideable_score_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'team_season_stats_cubit.freezed.dart';
part 'team_season_stats_state.dart';

class TeamSeasonStatsCubit extends BaseCubit<TeamSeasonStatsState>
    with HideableScoreCubit {
  static const int _displayedTeamsCount = 3;

  final GetTeamSeasonStatsUseCase _getTeamSeasonStatsUseCase;
  final SettingsRepository _settingsRepository;

  final BehaviorSubject<String> _searchQuery = BehaviorSubject.seeded('');

  TeamSeasonStatsCubit(
    this._getTeamSeasonStatsUseCase,
    this._settingsRepository,
  ) : super(const TeamSeasonStatsState.loading()) {
    disposeControllersOnClose([shouldOverrideHideScores, _searchQuery]);
  }

  @override
  Stream<TeamSeasonStatsState> buildStateStream() {
    return CombineLatestStream.combine3(
      _getTeamSeasonStatsUseCase(),
      shouldHideScores(_settingsRepository.shouldHideScores()),
      _searchQuery,
      (loadResult, hideScores, searchQuery) {
        return loadResult.fold(
          onSuccess: (categories) {
            if (hideScores) {
              return const TeamSeasonStatsState.hideScores();
            }
            if (searchQuery.isNotEmpty) {
              categories = categories.mapList((category) {
                final index = category.teams.indexWhere((item) {
                  return item.team.fullName.toLowerCase().contains(searchQuery);
                });
                return category.copyWith(
                  highlightedTeamIndex: index >= 0 ? index : null,
                );
              });
            }

            return TeamSeasonStatsState.displayData(
              categories: categories,
              displayedTeamsCount: _displayedTeamsCount,
            );
          },
          onFailure: (_) => const TeamSeasonStatsState.error(),
        );
      },
    );
  }

  void search(String query) {
    _searchQuery.add(query.toLowerCase());
  }
}
