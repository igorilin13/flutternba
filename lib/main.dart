import 'dart:isolate';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/firebase_options.dart';
import 'package:flutternba/ui/core/colors.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/favorite/onboarding/onboarding_screen.dart';
import 'package:flutternba/ui/home/home_screen.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  _configureCrashlytics();
  final onboardingComplete =
      locator<SettingsRepository>().isOnboardingComplete();

  runApp(_MyApp(onboardingComplete));
}

void _configureCrashlytics() {
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  Isolate.current.addErrorListener(RawReceivePort((pair) async {
    final List<dynamic> errorAndStacktrace = pair;
    await FirebaseCrashlytics.instance.recordError(
      errorAndStacktrace.first,
      errorAndStacktrace.last,
      fatal: true,
    );
  }).sendPort);
}

class _MyApp extends StatelessWidget {
  final bool _onboardingComplete;

  const _MyApp(this._onboardingComplete);

  @override
  Widget build(BuildContext context) {
    createTheme({required bool isDark}) {
      return ThemeData(
        colorScheme: isDark ? AppColorSchemes.dark : AppColorSchemes.light,
        useMaterial3: true,
      );
    }

    return BlocProvider(
      create: (BuildContext context) => SettingsCubit(locator(), locator()),
      child: MaterialApp(
        title: UiStrings.appTitle,
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
