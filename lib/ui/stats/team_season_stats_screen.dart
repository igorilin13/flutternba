import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/domain/teams/stats/team_season_stats_models.dart';
import 'package:flutternba/ui/core/components/app_bar.dart';
import 'package:flutternba/ui/core/components/cta_message.dart';
import 'package:flutternba/ui/core/components/error_display.dart';
import 'package:flutternba/ui/core/components/header_item.dart';
import 'package:flutternba/ui/core/components/list_card.dart';
import 'package:flutternba/ui/core/components/progress_indicator.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/stats/team_season_stats_cubit.dart';

class TeamSeasonStatsScreen extends StatefulWidget {
  const TeamSeasonStatsScreen({super.key});

  @override
  State<TeamSeasonStatsScreen> createState() => _TeamSeasonStatsScreenState();
}

class _TeamSeasonStatsScreenState extends State<TeamSeasonStatsScreen>
    with AutomaticKeepAliveClientMixin {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => TeamSeasonStatsCubit(locator(), locator()),
      child: BlocBuilder<TeamSeasonStatsCubit, TeamSeasonStatsState>(
        builder: (context, state) => GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            appBar: const NbaAppBar(
              title: Text(UiStrings.screenTitleTeamStats),
              showBackButton: false,
            ),
            body: _buildBody(context, state),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, TeamSeasonStatsState state) {
    switch (state) {
      case LoadingState():
        return const Center(child: NbaProgressIndicator());
      case HideScoresState():
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: NbaActionMessage(
              message: UiStrings.teamStatsHideScoresMessage,
              actionText: UiStrings.actionRevealStats,
              icon: Icons.check,
              onAction: context.read<TeamSeasonStatsCubit>().overrideHideScores,
            ),
          ),
        );
      case ErrorState():
        return Center(
          child: NbaErrorDisplay(
            message: UiStrings.teamStatsErrorMessage,
            onTap: context.read<TeamSeasonStatsCubit>().retryLoading,
          ),
        );

      case DisplayDataState():
        return ListView.builder(
          restorationId: "teamSeasonStats",
          padding: const EdgeInsets.all(12),
          itemCount: state.categories.length * 2 + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  bottom: 24,
                  right: 8,
                ),
                child: CupertinoSearchTextField(
                  controller: _searchController,
                  style: Theme.of(context).textTheme.bodyLarge,
                  onChanged: context.read<TeamSeasonStatsCubit>().search,
                ),
              );
            }
            final categoryItem = state.categories[(index - 1) ~/ 2];
            if (index.isOdd) {
              return Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 4),
                child: NbaHeaderItem(text: categoryItem.category.title),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: _buildCategory(
                  context,
                  categoryItem,
                  state.displayedTeamsCount,
                ),
              );
            }
          },
        );
    }
  }

  Widget _buildCategory(
    BuildContext context,
    LeagueStatRanking ranking,
    int displayedTeamsCount,
  ) {
    var highlightedTeamIndex = ranking.highlightedTeamIndex;
    return NbaListCard(
      children: [
        for (var i = 0; i < displayedTeamsCount; i++)
          Padding(
            padding: EdgeInsets.only(top: i > 0 ? 8 : 0),
            child: _buildTeamTile(
              context,
              team: ranking.teams[i],
              rank: i + 1,
              isHighlighted: highlightedTeamIndex == i,
            ),
          ),
        if (highlightedTeamIndex != null &&
            highlightedTeamIndex >= displayedTeamsCount)
          Padding(
            padding: EdgeInsets.only(
              top: highlightedTeamIndex >= displayedTeamsCount + 1 ? 16 : 8,
            ),
            child: _buildTeamTile(
              context,
              team: ranking.teams[highlightedTeamIndex],
              rank: highlightedTeamIndex + 1,
              isHighlighted: true,
            ),
          ),
      ],
    );
  }

  Widget _buildTeamTile(
    BuildContext context, {
    required TeamStatValue team,
    required int rank,
    required bool isHighlighted,
  }) {
    final theme = Theme.of(context);
    return NbaListCardTile(
      child: Row(
        children: [
          SizedBox(
            width: 20,
            child: Text(
              rank.toString(),
              style: theme.textTheme.bodySmall,
            ),
          ),
          if (AppConfig.showTeamLogos)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: NbaTeamLogo.imageOnly(
                teamId: team.team.id,
                size: NbaTeamLogoSize.xSmall,
              ),
            ),
          Expanded(
            child: Text(
              team.team.fullName,
              style: isHighlighted
                  ? theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold)
                  : theme.textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(team.value.toStringAsFixed(1)),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
