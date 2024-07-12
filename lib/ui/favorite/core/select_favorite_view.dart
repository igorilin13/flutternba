import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/data/teams/team_model.dart';
import 'package:flutternba/ui/core/components/app_bar.dart';
import 'package:flutternba/ui/core/components/error_display.dart';
import 'package:flutternba/ui/core/components/progress_indicator.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/favorite/core/base_select_favorite_cubit.dart';
import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';

class SelectFavoriteTeamView<T extends BaseSelectFavoriteTeamCubit>
    extends StatefulWidget {
  final VoidCallback onSelectionComplete;
  final VoidCallback? onSkipTap;

  const SelectFavoriteTeamView({
    super.key,
    required this.onSelectionComplete,
    this.onSkipTap,
  });

  @override
  State<SelectFavoriteTeamView<T>> createState() =>
      _SelectFavoriteTeamViewState<T>();
}

class _SelectFavoriteTeamViewState<T extends BaseSelectFavoriteTeamCubit>
    extends State<SelectFavoriteTeamView<T>> with RestorationMixin {
  final RestorableIntN _selectedTeamId = RestorableIntN(null);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, SelectFavoriteTeamState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(context, widget.onSkipTap),
          body: _buildBody(
            context,
            state,
            onTeamTap: (team) {
              setState(() {
                _selectedTeamId.value = team.id;
              });
            },
          ),
          bottomNavigationBar: _buildContinueButton(
            context,
            state,
            onTap: () async {
              final cubit = context.read<T>();
              if (await cubit.confirmSelection(_selectedTeamId.value)) {
                widget.onSelectionComplete();
              }
            },
          ),
        );
      },
    );
  }

  NbaAppBar _buildAppBar(
    BuildContext context,
    VoidCallback? onSkipClick,
  ) {
    return NbaAppBar(
      title: const Text(UiStrings.titleSelectTeam),
      actions: [
        if (onSkipClick != null)
          TextButton(
            onPressed: onSkipClick,
            child: Text(
              UiStrings.actionSkipOnboarding,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
      ],
    );
  }

  Widget? _buildContinueButton(
    BuildContext context,
    SelectFavoriteTeamState state, {
    required VoidCallback onTap,
  }) {
    if (_selectedTeamId.value == null || state is! DisplayState) {
      return null;
    }

    if (state.isConfirmationInProgress) {
      return const Padding(
        padding: EdgeInsets.only(bottom: 24, top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            NbaProgressIndicator(size: NbaProgressIndicatorSize.small),
            SizedBox(height: 4),
            Text(UiStrings.confirmSelectionInProgress)
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: FilledButton(
          onPressed: onTap,
          child: const Text(UiStrings.actionConfirm),
        ),
      );
    }
  }

  Widget _buildBody(
    BuildContext context,
    SelectFavoriteTeamState state, {
    required void Function(Team) onTeamTap,
  }) {
    switch (state) {
      case LoadingState():
        return const Center(child: NbaProgressIndicator());
      case ErrorState():
        return Center(
          child: NbaErrorDisplay(
            message: UiStrings.teamListLoadError,
            onTap: context.read<T>().retryLoading,
          ),
        );
      case DisplayState():
        const itemWidth = 160.0;
        const itemHeight = 225.0;
        const itemSpacing = 8.0;
        const containerMargin = 8.0;

        final availableWidth =
            MediaQuery.of(context).size.width - 2 * containerMargin;
        int columnCount = (availableWidth / (itemWidth + itemSpacing)).floor();

        return GridView.builder(
          restorationId: "selectFavoriteTeamGrid",
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columnCount,
            crossAxisSpacing: itemSpacing,
            mainAxisSpacing: itemSpacing,
            mainAxisExtent: itemHeight,
          ),
          padding: const EdgeInsets.all(containerMargin),
          itemCount: state.teams.length,
          itemBuilder: (BuildContext context, int index) {
            var team = state.teams[index];
            return _buildTeamCard(
              context,
              team: team,
              selectedTeamId: _selectedTeamId.value,
              onTap: () => onTeamTap(team),
            );
          },
        );
    }
  }

  Widget _buildTeamCard(
    BuildContext context, {
    required Team team,
    int? selectedTeamId,
    required VoidCallback onTap,
  }) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NbaTeamLogo(
                name: team.abbreviation,
                color: team.color,
                size: NbaTeamLogoSize.large,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                    value: team.id,
                    groupValue: selectedTeamId,
                    onChanged: (_) => onTap(),
                  ),
                  Flexible(
                    child: Text(
                      team.fullName,
                      style: Theme.of(context).textTheme.bodyLarge,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  String? get restorationId => "teamSelection";

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedTeamId, "selectedTeamId");
  }
}
