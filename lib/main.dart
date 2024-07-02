import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
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
    TextTheme cupertinoTextTheme = TextTheme(
      headlineMedium: const CupertinoThemeData()
          .textTheme
          .navLargeTitleTextStyle
          .copyWith(letterSpacing: -1.5),
      titleLarge: const CupertinoThemeData().textTheme.navTitleTextStyle,
    );

    createTheme({required bool isDark}) {
      return ThemeData(
        colorScheme: isDark ? AppColorSchemes.dark : AppColorSchemes.light,
        useMaterial3: true,
        textTheme: Platform.isIOS ? cupertinoTextTheme : null,
      );
    }

    return BlocProvider(
      create: (BuildContext context) => SettingsCubit(locator(), locator()),
      child: MaterialApp(
        title: "NBA Schedules",
        restorationScopeId: "root",
        darkTheme: createTheme(isDark: true),
        theme: createTheme(isDark: false),
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
