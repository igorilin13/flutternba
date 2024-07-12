import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/ui/core/cubit/base_cubit.dart';
import 'package:flutternba/ui/settings/settings_state.dart';
import 'package:rxdart/rxdart.dart';

class SettingsCubit extends BaseCubit<SettingsState> {
  final SettingsRepository _settingsRepository;
  final TeamsRepository _teamsRepository;
  final FirebaseMessaging _firebaseMessaging;

  final BehaviorSubject<bool> _isUpdatingGameReminders =
      BehaviorSubject.seeded(false);

  SettingsCubit(
    this._settingsRepository,
    this._teamsRepository,
    this._firebaseMessaging,
  ) : super(SettingsState.initial);

  @override
  Stream<SettingsState> buildStateStream() {
    final favoriteTeamSettingStream = _settingsRepository
        .getFavoriteTeamId()
        .switchMap(buildFavoriteTeamState);

    return CombineLatestStream.combine4(
      _settingsRepository.shouldHideScores(),
      favoriteTeamSettingStream,
      _settingsRepository.areGameRemindersOn(),
      _isUpdatingGameReminders,
      (hideScores, favoriteTeam, gameRemindersOn, isUpdatingGameReminders) {
        final isAvailable = favoriteTeam is HasFavoriteTeamState;
        return SettingsState(
          shouldHideScores: hideScores,
          favoriteTeamState: favoriteTeam,
          gameRemindersState: GameRemindersSettingState(
            isAvailable: isAvailable,
            isTurnedOn: gameRemindersOn,
            isSaving: isUpdatingGameReminders,
          ),
        );
      },
    );
  }

  Stream<FavoriteTeamSettingState> buildFavoriteTeamState(int? teamId) {
    if (teamId != null) {
      return _teamsRepository.getTeam(teamId).asLoadingStream().map(
            (result) =>
                result?.fold(
                  onSuccess: (team) =>
                      FavoriteTeamSettingState.hasFavorite(team),
                  onFailure: (_) => const FavoriteTeamSettingState.error(),
                ) ??
                const FavoriteTeamSettingState.loading(),
          );
    } else {
      return Stream.value(const FavoriteTeamSettingState.noFavorite());
    }
  }

  void setHideScores(bool value) async {
    await _settingsRepository.setHideScores(value);
  }

  void setGameReminders(bool value) async {
    _isUpdatingGameReminders.add(true);

    if (value) {
      final permissionResult = await _firebaseMessaging.requestPermission();
      if (permissionResult.authorizationStatus ==
          AuthorizationStatus.authorized) {
        await _settingsRepository.setGameReminders(true);
      }
    } else {
      await _settingsRepository.setGameReminders(false);
    }

    _isUpdatingGameReminders.add(false);
  }
}
