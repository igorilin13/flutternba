import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/common/integrations/crashlytics.dart';
import 'package:flutternba/common/integrations/firebase_messaging.dart';
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
  CrashlyticsIntegration.init();
  final onboardingComplete =
      locator<SettingsRepository>().isOnboardingComplete();

  runApp(_MyApp(onboardingComplete));
}

class _MyApp extends StatefulWidget {
  final bool _onboardingComplete;

  const _MyApp(this._onboardingComplete);

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  late StreamSubscription _messagingSubscription;
  final FirebaseMessagingIntegration _messagingIntegration = locator();

  @override
  void initState() {
    _initFirebaseMessaging();
    super.initState();
  }

  void _initFirebaseMessaging() {
    _messagingSubscription = _messagingIntegration.init();
  }

  @override
  Widget build(BuildContext context) {
    createTheme({required bool isDark}) {
      return ThemeData(
        colorScheme: isDark ? AppColorSchemes.dark : AppColorSchemes.light,
        useMaterial3: true,
      );
    }

    return BlocProvider(
      create: (BuildContext context) => SettingsCubit(
        locator(),
        locator(),
        locator(),
      ),
      child: MaterialApp(
        title: UiStrings.appTitle,
        restorationScopeId: "root",
        darkTheme: createTheme(isDark: true),
        theme: createTheme(isDark: false),
        themeMode: ThemeMode.system,
        home: _RootScreen(widget._onboardingComplete),
      ),
    );
  }

  @override
  void dispose() {
    _messagingSubscription.cancel();
    super.dispose();
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
