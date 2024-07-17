import 'package:flutternba/domain/teams/stats/get_team_season_stats.dart';
import 'package:flutternba/domain/teams/stats/team_season_stats_models.dart';
import 'package:flutternba/ui/core/cubit/base_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_stat_category_screen_cubit.freezed.dart';
part 'team_stat_category_screen_state.dart';

class TeamStatCategoryCubit extends BaseCubit<TeamStatCategoryState> {
  final TeamStatCategory _category;
  final GetTeamSeasonStatsUseCase _getTeamSeasonStatsUseCase;

  TeamStatCategoryCubit(this._category, this._getTeamSeasonStatsUseCase)
      : super(const TeamStatCategoryState.loading());

  @override
  Stream<TeamStatCategoryState> buildStateStream() {
    return _getTeamSeasonStatsUseCase.getCategory(_category).map(
          (loadResult) => loadResult.fold(
            onSuccess: (ranking) => TeamStatCategoryState.displayData(ranking),
            onFailure: (_) => const TeamStatCategoryState.error(),
          ),
        );
  }
}
