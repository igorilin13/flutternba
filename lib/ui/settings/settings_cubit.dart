import 'dart:async';

import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/ui/settings/settings_state.dart';
import 'package:rxdart/rxdart.dart';

import '../util/bloc/base_cubit.dart';

class SettingsCubit extends BaseCubit<SettingsState> {
  final SettingsRepository _settingsRepository;
  final TeamsRepository _teamsRepository;

  SettingsCubit(
    this._settingsRepository,
    this._teamsRepository,
  ) : super(SettingsState.initial);

  @override
  Stream<SettingsState> buildStateStream() {
    final favoriteTeamSettingStream = _settingsRepository
        .getFavoriteTeamId()
        .switchMap(buildFavoriteTeamState);

    return CombineLatestStream.combine2(
      _settingsRepository.shouldHideScores(),
      favoriteTeamSettingStream,
      (hideScores, favoriteTeam) => SettingsState(
        shouldHideScores: hideScores,
        favoriteTeamState: favoriteTeam,
      ),
    );
  }

  void setHideScores(bool value) async {
    await _settingsRepository.setHideScores(value);
  }

  Stream<FavoriteTeamSettingState> buildFavoriteTeamState(int? teamId) {
    if (teamId != null) {
      return _teamsRepository
          .getTeam(teamId)
          .asNullableStream()
          .startWith(null)
          .map(
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
}
