import 'package:flutter/material.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/ui/favorite/onboarding/onboarding_screen.dart';
import 'package:flutternba/ui/home/home_screen.dart';
import 'package:flutternba/ui/util/colors.dart';
import 'package:flutternba/ui/util/navigation.dart';

import 'common/di/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  final onboardingComplete =
      locator<SettingsRepository>().isOnboardingComplete();

  runApp(_MyApp(onboardingComplete));
}

class _MyApp extends StatelessWidget {
  final bool _onboardingComplete;

  const _MyApp(this._onboardingComplete);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NBA Schedules",
      darkTheme: ThemeData(
        colorScheme: AppColors.darkColorScheme,
        useMaterial3: true,
      ),
      theme: ThemeData(
        colorScheme: AppColors.lightColorScheme,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: _RootScreen(_onboardingComplete),
    );
  }
}

class _RootScreen extends StatelessWidget {
  final bool _onboardingComplete;

  const _RootScreen(this._onboardingComplete);

  @override
  Widget build(BuildContext context) {
    if (_onboardingComplete) {
      return const HomeScreen();
    } else {
      return SelectTeamOnboardingScreen(
        onOnboardingComplete: () {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigation.openHome(context);
          });
        },
      );
    }
  }
}
