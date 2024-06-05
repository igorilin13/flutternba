import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/firebase_options.dart';
import 'package:flutternba/ui/favorite/onboarding/onboarding_screen.dart';
import 'package:flutternba/ui/home/home_screen.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
import 'package:flutternba/ui/util/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final onboardingComplete =
      locator<SettingsRepository>().isOnboardingComplete();

  runApp(_MyApp(onboardingComplete));
}

class _MyApp extends StatelessWidget {
  final bool _onboardingComplete;

  const _MyApp(this._onboardingComplete);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SettingsCubit(locator(), locator()),
      child: MaterialApp(
        title: "NBA Schedules",
        restorationScopeId: "root",
        darkTheme: ThemeData(
          colorScheme: AppColorSchemes.dark,
          useMaterial3: true,
        ),
        theme: ThemeData(
          colorScheme: AppColorSchemes.light,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        home: _RootScreen(_onboardingComplete),
      ),
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
            HomeScreen.navigate(context);
          });
        },
      );
    }
  }
}
