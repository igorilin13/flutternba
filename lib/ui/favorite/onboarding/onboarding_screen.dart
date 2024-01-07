import 'package:flutter/material.dart';
import 'package:flutternba/ui/favorite/onboarding/onboarding_provider.dart';
import 'package:flutternba/ui/favorite/onboarding/onboarding_state.dart';
import 'package:flutternba/ui/util/asset_paths.dart';
import 'package:flutternba/ui/util/extensions.dart';
import 'package:provider/provider.dart';

import '../../../common/di/locator.dart';
import '../../../data/teams/team_model.dart';
import '../../util/strings.dart';
import '../../util/widgets/error_display.dart';

class SelectTeamOnboardingScreen extends StatelessWidget {
  final VoidCallback onOnboardingComplete;

  const SelectTeamOnboardingScreen({
    super.key,
    required this.onOnboardingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectTeamOnboardingProvider(locator(), locator()),
      child: Consumer<SelectTeamOnboardingProvider>(
        builder: (context, provider, child) {
          return StreamBuilder<SelectTeamOnboardingEvent>(
            stream: provider.uiEvents,
            builder: (context, snapshot) {
              handleEvent(context, snapshot.data);
              final state = provider.state;

              return Scaffold(
                appBar: _buildAppBar(context, provider.skipOnboarding),
                body: _buildBody(
                  context,
                  state,
                  onTeamTap: provider.selectTeam,
                ),
                bottomNavigationBar: state.canContinue
                    ? _buildContinueButton(context, provider.confirmSelection)
                    : null,
              );
            },
          );
        },
      ),
    );
  }

  void handleEvent(BuildContext context, SelectTeamOnboardingEvent? event) {
    switch (event) {
      case OnboardingCompleteEvent():
        onOnboardingComplete();
      case null:
        break;
    }
  }

  AppBar _buildAppBar(BuildContext context, VoidCallback onSkipClick) {
    return AppBar(
      title: Text(
        UiStrings.titleSelectTeam,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      centerTitle: true,
      scrolledUnderElevation: 0,
      backgroundColor: Theme.of(context).colorScheme.background,
      actions: [
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

  Widget _buildContinueButton(BuildContext context, VoidCallback onTap) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        child: const Text(UiStrings.actionContinue),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    SelectTeamOnboardingState state, {
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
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.82),
          padding: const EdgeInsets.all(8.0),
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
