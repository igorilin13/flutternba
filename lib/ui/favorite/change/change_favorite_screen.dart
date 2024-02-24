import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/di/locator.dart';
import '../../settings/settings_provider.dart';
import '../../util/strings.dart';
import '../core/select_favorite_screen.dart';
import 'change_favorite_provider.dart';

class ChangeFavoriteTeamScreen extends StatelessWidget {
  final void Function(int?) onSelectionComplete;

  const ChangeFavoriteTeamScreen({
    super.key,
    required this.onSelectionComplete,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChangeFavoriteTeamProvider(locator(), locator()),
      child: Consumer<ChangeFavoriteTeamProvider>(
        builder: (context, provider, child) {
          return SelectFavoriteTeamScreen(
            provider: provider,
            confirmButtonText: UiStrings.actionConfirm,
            onTeamTap: provider.selectTeam,
            onConfirmTap: provider.confirmSelection,
            onSkipTap: null,
            onSelectionComplete: (teamId) {
              final settingsProvider = context.read<SettingsProvider>();
              settingsProvider.updateFavoriteTeam(teamId);
              onSelectionComplete(teamId);
            },
          );
        },
      ),
    );
  }

  static void navigate(BuildContext context) {
    Navigator.restorablePush(context, _buildRoute);
  }

  @pragma('vm:entry-point')
  static Route<void> _buildRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => ChangeFavoriteTeamScreen(
        onSelectionComplete: (teamId) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.pop(context);
          });
        },
      ),
    );
  }
}
