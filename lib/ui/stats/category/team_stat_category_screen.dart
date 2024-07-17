import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/domain/teams/stats/team_season_stats_models.dart';
import 'package:flutternba/ui/core/components/app_bar.dart';
import 'package:flutternba/ui/core/components/error_display.dart';
import 'package:flutternba/ui/core/components/list_card.dart';
import 'package:flutternba/ui/core/components/progress_indicator.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/stats/category/team_stat_category_screen_cubit.dart';
import 'package:flutternba/ui/stats/widgets/team_stat_tile_widget.dart';

class TeamStatCategoryScreen extends StatelessWidget {
  final TeamStatCategory category;

  const TeamStatCategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamStatCategoryCubit(category, locator()),
      child: BlocBuilder<TeamStatCategoryCubit, TeamStatCategoryState>(
        builder: (context, state) {
          return Scaffold(
            appBar: NbaAppBar(title: Text(category.title)),
            body: _buildBody(context, state),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, TeamStatCategoryState state) {
    switch (state) {
      case LoadingState():
        return const Center(child: NbaProgressIndicator());
      case ErrorState():
        return Center(
          child: NbaErrorDisplay(
            message: UiStrings.teamStatsErrorMessage,
            onTap: context.read<TeamStatCategoryCubit>().retryLoading,
          ),
        );

      case DisplayDataState():
        final ranking = state.ranking;
        return SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 8,
            bottom: 24,
          ),
          child: NbaListCard(
            children: ranking.teams.mapIndexed((index, team) {
              return Padding(
                padding: EdgeInsets.only(top: index > 0 ? 8 : 0),
                child: TeamStatCardTile(
                  team: ranking.teams[index],
                  rank: index + 1,
                  isHighlighted: ranking.highlightedTeamIndex == index,
                ),
              );
            }).toList(growable: false),
          ),
        );
    }
  }

  static void navigate(BuildContext context, TeamStatCategory category) {
    Navigator.restorablePush(context, _buildRoute, arguments: category.index);
  }

  @pragma('vm:entry-point')
  static Route<void> _buildRoute(
    BuildContext context,
    Object? arguments,
  ) {
    final category = TeamStatCategory.values[arguments! as int];
    return MaterialPageRoute<void>(
      builder: (BuildContext context) =>
          TeamStatCategoryScreen(category: category),
    );
  }
}
