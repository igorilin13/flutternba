import 'package:collection/collection.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/teams/stats/team_season_stats_model.dart';
import 'package:flutternba/data/teams/stats/team_season_stats_repository.dart';
import 'package:flutternba/domain/teams/stats/team_season_stats_models.dart';
import 'package:rxdart/rxdart.dart';

class GetTeamSeasonStatsUseCase {
  final TeamSeasonStatsRepository _statsRepository;
  final SettingsRepository _settingsRepository;

  GetTeamSeasonStatsUseCase(this._statsRepository, this._settingsRepository);

  Stream<Result<LeagueStatRanking>> getCategory(TeamStatCategory category) {
    return CombineLatestStream.combine2(
      _statsRepository.getTeams().asStream(),
      _settingsRepository.getFavoriteTeamId(),
      (loadResult, favoriteId) {
        return loadResult.mapValue(
          (teams) => _createRanking(category, teams, favoriteId),
        );
      },
    );
  }

  Stream<Result<List<LeagueStatRanking>>> getAll() {
    return CombineLatestStream.combine2(
      _statsRepository.getTeams().asStream(),
      _settingsRepository.getFavoriteTeamId(),
      (loadResult, favoriteId) {
        return loadResult.mapValue((teams) {
          return TeamStatCategory.values.mapList(
            (category) => _createRanking(category, teams, favoriteId),
          );
        });
      },
    );
  }

  LeagueStatRanking _createRanking(
    TeamStatCategory category,
    List<TeamSeasonStats> teams,
    int? favoriteId,
  ) {
    final teamValues = teams.mapList((item) {
      return TeamStatValue(
        team: item.team,
        value: category.getValue(item),
      );
    });

    final sorted = category.isDescending
        ? teamValues.sortedByDescending((it) => it.value)
        : teamValues.sortedBy<num>((it) => it.value);
    final favoriteTeamIndex = sorted.indexWhere(
      (it) => it.team.id == favoriteId,
    );

    return LeagueStatRanking(
      category: category,
      teams: sorted,
      highlightedTeamIndex: favoriteTeamIndex >= 0 ? favoriteTeamIndex : null,
    );
  }
}
