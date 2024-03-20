import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/di/locator.dart';
import '../../util/strings.dart';
import '../core/select_favorite_view.dart';
import 'change_favorite_cubit.dart';

class ChangeFavoriteTeamScreen extends StatelessWidget {
  final VoidCallback onSelectionComplete;

  const ChangeFavoriteTeamScreen({
    super.key,
    required this.onSelectionComplete,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ChangeFavoriteTeamCubit(
        locator(),
        locator(),
      ),
      child: Builder(builder: (context) {
        return SelectFavoriteTeamView<ChangeFavoriteTeamCubit>(
          confirmButtonText: UiStrings.actionConfirm,
          onSkipTap: null,
          onSelectionComplete: onSelectionComplete,
        );
      }),
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
        onSelectionComplete: () {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.pop(context);
          });
        },
      ),
    );
  }
}
