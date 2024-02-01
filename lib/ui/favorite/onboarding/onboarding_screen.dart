import 'package:flutter/material.dart';
import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';
import 'package:flutternba/ui/favorite/onboarding/onboarding_provider.dart';
import 'package:provider/provider.dart';

import '../../../common/di/locator.dart';
import '../../util/strings.dart';
import '../core/select_favorite_screen.dart';

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
          return SelectFavoriteTeamScreen(
            provider: provider,
            confirmButtonText: UiStrings.actionContinue,
            onTeamTap: provider.selectTeam,
            onConfirmTap: provider.confirmSelection,
            onSkipTap: provider.skipOnboarding,
            onSelectionComplete: (_) => onOnboardingComplete(),
          );
        },
      ),
    );
  }

  void handleEvent(BuildContext context, SelectFavoriteTeamEvent? event) {
    switch (event) {
      case FavoriteTeamSelectionComplete():
        onOnboardingComplete();
      case null:
        break;
    }
  }
}
