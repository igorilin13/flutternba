import 'package:flutter/material.dart';
import 'package:flutternba/ui/favorite/core/base_select_favorite_provider.dart';
import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';
import 'package:flutternba/ui/util/asset_paths.dart';
import 'package:flutternba/ui/util/extensions.dart';

import '../../../data/teams/team_model.dart';
import '../../util/strings.dart';
import '../../util/widgets/error_display.dart';

class SelectFavoriteTeamScreen extends StatelessWidget {
  final BaseSelectFavoriteTeamProvider provider;
  final String confirmButtonText;
  final void Function(Team) onTeamTap;
  final VoidCallback onConfirmTap;
  final void Function(int?) onSelectionComplete;
  final VoidCallback? onSkipTap;

  const SelectFavoriteTeamScreen({
    super.key,
    required this.provider,
    required this.confirmButtonText,
    required this.onTeamTap,
    required this.onConfirmTap,
    required this.onSelectionComplete,
    this.onSkipTap,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SelectFavoriteTeamEvent>(
      stream: provider.uiEvents,
      builder: (context, snapshot) {
        handleEvent(context, snapshot.data);
        final state = provider.state;

        return Scaffold(
          appBar: _buildAppBar(context, onSkipTap),
          body: _buildBody(
            context,
            state,
            onTeamTap: onTeamTap,
          ),
          bottomNavigationBar: state.hasSelection
              ? _buildContinueButton(context, confirmButtonText, onConfirmTap)
              : null,
        );
      },
    );
  }

  void handleEvent(BuildContext context, SelectFavoriteTeamEvent? event) {
    switch (event) {
      case FavoriteTeamSelectionComplete():
        onSelectionComplete(event.teamId);
      case null:
        break;
    }
  }

  AppBar _buildAppBar(BuildContext context, VoidCallback? onSkipClick) {
    return AppBar(
      title: Text(
        UiStrings.titleSelectTeam,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      centerTitle: true,
      scrolledUnderElevation: 0,
      backgroundColor: Theme.of(context).colorScheme.background,
      actions: [
        if (onSkipClick != null)
          TextButton(
            onPressed: onSkipClick,
            child: Text(
              UiStrings.actionSkip,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
      ],
    );
  }

  Widget _buildContinueButton(
    BuildContext context,
    String text,
    VoidCallback onTap,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        child: Text(text),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    SelectFavoriteTeamState state, {
    required void Function(Team) onTeamTap,
  }) {
    switch (state) {
      case LoadingState():
        return const Center(child: CircularProgressIndicator());
      case ErrorState():
        return const Center(
          child: ErrorDisplay(message: UiStrings.teamListLoadError),
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
              selectedTeamId: state.selectedId,
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
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AssetPaths.teamLogo(team.id),
                height: 128,
                cacheHeight: 128.toPx(context),
                fit: BoxFit.contain,
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
}
