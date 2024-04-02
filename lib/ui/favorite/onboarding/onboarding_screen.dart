import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/ui/favorite/onboarding/onboarding_cubit.dart';

import '../../../common/di/locator.dart';
import '../../util/strings.dart';
import '../core/select_favorite_view.dart';

class SelectTeamOnboardingScreen extends StatelessWidget {
  final VoidCallback onOnboardingComplete;

  const SelectTeamOnboardingScreen({
    super.key,
    required this.onOnboardingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SelectTeamOnboardingCubit(
        locator(),
        locator(),
      ),
      child: Builder(builder: (context) {
        return SelectFavoriteTeamView<SelectTeamOnboardingCubit>(
          confirmButtonText: UiStrings.actionCompleteOnboarding,
          onSkipTap: context.read<SelectTeamOnboardingCubit>().skipOnboarding,
          onSelectionComplete: onOnboardingComplete,
        );
      }),
    );
  }
}
