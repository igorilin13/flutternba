// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_games_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamGamesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noGamesAvailable,
    required TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)
        displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noGamesAvailable,
    TResult? Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noGamesAvailable,
    TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(DisplayDataState value) displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(DisplayDataState value)? displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamGamesStateCopyWith<$Res> {
  factory $TeamGamesStateCopyWith(
          TeamGamesState value, $Res Function(TeamGamesState) then) =
      _$TeamGamesStateCopyWithImpl<$Res, TeamGamesState>;
}

/// @nodoc
class _$TeamGamesStateCopyWithImpl<$Res, $Val extends TeamGamesState>
    implements $TeamGamesStateCopyWith<$Res> {
  _$TeamGamesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$TeamGamesStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'TeamGamesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noGamesAvailable,
    required TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)
        displayData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noGamesAvailable,
    TResult? Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noGamesAvailable,
    TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements TeamGamesState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$TeamGamesStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'TeamGamesState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noGamesAvailable,
    required TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)
        displayData,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noGamesAvailable,
    TResult? Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noGamesAvailable,
    TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements TeamGamesState {
  const factory ErrorState() = _$ErrorStateImpl;
}

/// @nodoc
abstract class _$$NoGamesAvailableStateImplCopyWith<$Res> {
  factory _$$NoGamesAvailableStateImplCopyWith(
          _$NoGamesAvailableStateImpl value,
          $Res Function(_$NoGamesAvailableStateImpl) then) =
      __$$NoGamesAvailableStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoGamesAvailableStateImplCopyWithImpl<$Res>
    extends _$TeamGamesStateCopyWithImpl<$Res, _$NoGamesAvailableStateImpl>
    implements _$$NoGamesAvailableStateImplCopyWith<$Res> {
  __$$NoGamesAvailableStateImplCopyWithImpl(_$NoGamesAvailableStateImpl _value,
      $Res Function(_$NoGamesAvailableStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoGamesAvailableStateImpl implements NoGamesAvailableState {
  const _$NoGamesAvailableStateImpl();

  @override
  String toString() {
    return 'TeamGamesState.noGamesAvailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoGamesAvailableStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noGamesAvailable,
    required TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)
        displayData,
  }) {
    return noGamesAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noGamesAvailable,
    TResult? Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
  }) {
    return noGamesAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noGamesAvailable,
    TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
    required TResult orElse(),
  }) {
    if (noGamesAvailable != null) {
      return noGamesAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return noGamesAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return noGamesAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) {
    if (noGamesAvailable != null) {
      return noGamesAvailable(this);
    }
    return orElse();
  }
}

abstract class NoGamesAvailableState implements TeamGamesState {
  const factory NoGamesAvailableState() = _$NoGamesAvailableStateImpl;
}

/// @nodoc
abstract class _$$DisplayDataStateImplCopyWith<$Res> {
  factory _$$DisplayDataStateImplCopyWith(_$DisplayDataStateImpl value,
          $Res Function(_$DisplayDataStateImpl) then) =
      __$$DisplayDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GameItem? nextGame,
      GameItem? previousGame,
      List<GameItem> upcomingGames,
      List<GameItem> previousGames,
      int teamId,
      bool hasHiddenUpcomingGames,
      Result<TeamStandings>? standings});

  $GameItemCopyWith<$Res>? get nextGame;
  $GameItemCopyWith<$Res>? get previousGame;
}

/// @nodoc
class __$$DisplayDataStateImplCopyWithImpl<$Res>
    extends _$TeamGamesStateCopyWithImpl<$Res, _$DisplayDataStateImpl>
    implements _$$DisplayDataStateImplCopyWith<$Res> {
  __$$DisplayDataStateImplCopyWithImpl(_$DisplayDataStateImpl _value,
      $Res Function(_$DisplayDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextGame = freezed,
    Object? previousGame = freezed,
    Object? upcomingGames = null,
    Object? previousGames = null,
    Object? teamId = null,
    Object? hasHiddenUpcomingGames = null,
    Object? standings = freezed,
  }) {
    return _then(_$DisplayDataStateImpl(
      nextGame: freezed == nextGame
          ? _value.nextGame
          : nextGame // ignore: cast_nullable_to_non_nullable
              as GameItem?,
      previousGame: freezed == previousGame
          ? _value.previousGame
          : previousGame // ignore: cast_nullable_to_non_nullable
              as GameItem?,
      upcomingGames: null == upcomingGames
          ? _value._upcomingGames
          : upcomingGames // ignore: cast_nullable_to_non_nullable
              as List<GameItem>,
      previousGames: null == previousGames
          ? _value._previousGames
          : previousGames // ignore: cast_nullable_to_non_nullable
              as List<GameItem>,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      hasHiddenUpcomingGames: null == hasHiddenUpcomingGames
          ? _value.hasHiddenUpcomingGames
          : hasHiddenUpcomingGames // ignore: cast_nullable_to_non_nullable
              as bool,
      standings: freezed == standings
          ? _value.standings
          : standings // ignore: cast_nullable_to_non_nullable
              as Result<TeamStandings>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameItemCopyWith<$Res>? get nextGame {
    if (_value.nextGame == null) {
      return null;
    }

    return $GameItemCopyWith<$Res>(_value.nextGame!, (value) {
      return _then(_value.copyWith(nextGame: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameItemCopyWith<$Res>? get previousGame {
    if (_value.previousGame == null) {
      return null;
    }

    return $GameItemCopyWith<$Res>(_value.previousGame!, (value) {
      return _then(_value.copyWith(previousGame: value));
    });
  }
}

/// @nodoc

class _$DisplayDataStateImpl implements DisplayDataState {
  const _$DisplayDataStateImpl(
      {required this.nextGame,
      required this.previousGame,
      required final List<GameItem> upcomingGames,
      required final List<GameItem> previousGames,
      required this.teamId,
      required this.hasHiddenUpcomingGames,
      required this.standings})
      : _upcomingGames = upcomingGames,
        _previousGames = previousGames;

  @override
  final GameItem? nextGame;
  @override
  final GameItem? previousGame;
  final List<GameItem> _upcomingGames;
  @override
  List<GameItem> get upcomingGames {
    if (_upcomingGames is EqualUnmodifiableListView) return _upcomingGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingGames);
  }

  final List<GameItem> _previousGames;
  @override
  List<GameItem> get previousGames {
    if (_previousGames is EqualUnmodifiableListView) return _previousGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousGames);
  }

  @override
  final int teamId;
  @override
  final bool hasHiddenUpcomingGames;
  @override
  final Result<TeamStandings>? standings;

  @override
  String toString() {
    return 'TeamGamesState.displayData(nextGame: $nextGame, previousGame: $previousGame, upcomingGames: $upcomingGames, previousGames: $previousGames, teamId: $teamId, hasHiddenUpcomingGames: $hasHiddenUpcomingGames, standings: $standings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayDataStateImpl &&
            (identical(other.nextGame, nextGame) ||
                other.nextGame == nextGame) &&
            (identical(other.previousGame, previousGame) ||
                other.previousGame == previousGame) &&
            const DeepCollectionEquality()
                .equals(other._upcomingGames, _upcomingGames) &&
            const DeepCollectionEquality()
                .equals(other._previousGames, _previousGames) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.hasHiddenUpcomingGames, hasHiddenUpcomingGames) ||
                other.hasHiddenUpcomingGames == hasHiddenUpcomingGames) &&
            (identical(other.standings, standings) ||
                other.standings == standings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      nextGame,
      previousGame,
      const DeepCollectionEquality().hash(_upcomingGames),
      const DeepCollectionEquality().hash(_previousGames),
      teamId,
      hasHiddenUpcomingGames,
      standings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayDataStateImplCopyWith<_$DisplayDataStateImpl> get copyWith =>
      __$$DisplayDataStateImplCopyWithImpl<_$DisplayDataStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noGamesAvailable,
    required TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)
        displayData,
  }) {
    return displayData(nextGame, previousGame, upcomingGames, previousGames,
        teamId, hasHiddenUpcomingGames, standings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noGamesAvailable,
    TResult? Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
  }) {
    return displayData?.call(nextGame, previousGame, upcomingGames,
        previousGames, teamId, hasHiddenUpcomingGames, standings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noGamesAvailable,
    TResult Function(
            GameItem? nextGame,
            GameItem? previousGame,
            List<GameItem> upcomingGames,
            List<GameItem> previousGames,
            int teamId,
            bool hasHiddenUpcomingGames,
            Result<TeamStandings>? standings)?
        displayData,
    required TResult orElse(),
  }) {
    if (displayData != null) {
      return displayData(nextGame, previousGame, upcomingGames, previousGames,
          teamId, hasHiddenUpcomingGames, standings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return displayData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return displayData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) {
    if (displayData != null) {
      return displayData(this);
    }
    return orElse();
  }
}

abstract class DisplayDataState implements TeamGamesState {
  const factory DisplayDataState(
          {required final GameItem? nextGame,
          required final GameItem? previousGame,
          required final List<GameItem> upcomingGames,
          required final List<GameItem> previousGames,
          required final int teamId,
          required final bool hasHiddenUpcomingGames,
          required final Result<TeamStandings>? standings}) =
      _$DisplayDataStateImpl;

  GameItem? get nextGame;
  GameItem? get previousGame;
  List<GameItem> get upcomingGames;
  List<GameItem> get previousGames;
  int get teamId;
  bool get hasHiddenUpcomingGames;
  Result<TeamStandings>? get standings;
  @JsonKey(ignore: true)
  _$$DisplayDataStateImplCopyWith<_$DisplayDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
