// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box_score_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameBoxScoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(GameItem gameItem) scheduled,
    required TResult Function() hideScoresOn,
    required TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)
        hasScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(GameItem gameItem)? scheduled,
    TResult? Function()? hideScoresOn,
    TResult? Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(GameItem gameItem)? scheduled,
    TResult Function()? hideScoresOn,
    TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ScheduledGameState value) scheduled,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(DisplayScoreState value) hasScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ScheduledGameState value)? scheduled,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(DisplayScoreState value)? hasScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ScheduledGameState value)? scheduled,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(DisplayScoreState value)? hasScore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameBoxScoreStateCopyWith<$Res> {
  factory $GameBoxScoreStateCopyWith(
          GameBoxScoreState value, $Res Function(GameBoxScoreState) then) =
      _$GameBoxScoreStateCopyWithImpl<$Res, GameBoxScoreState>;
}

/// @nodoc
class _$GameBoxScoreStateCopyWithImpl<$Res, $Val extends GameBoxScoreState>
    implements $GameBoxScoreStateCopyWith<$Res> {
  _$GameBoxScoreStateCopyWithImpl(this._value, this._then);

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
    extends _$GameBoxScoreStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'GameBoxScoreState.loading()';
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
    required TResult Function(GameItem gameItem) scheduled,
    required TResult Function() hideScoresOn,
    required TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)
        hasScore,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(GameItem gameItem)? scheduled,
    TResult? Function()? hideScoresOn,
    TResult? Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(GameItem gameItem)? scheduled,
    TResult Function()? hideScoresOn,
    TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
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
    required TResult Function(ScheduledGameState value) scheduled,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(DisplayScoreState value) hasScore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ScheduledGameState value)? scheduled,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(DisplayScoreState value)? hasScore,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ScheduledGameState value)? scheduled,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(DisplayScoreState value)? hasScore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements GameBoxScoreState {
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
    extends _$GameBoxScoreStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'GameBoxScoreState.error()';
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
    required TResult Function(GameItem gameItem) scheduled,
    required TResult Function() hideScoresOn,
    required TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)
        hasScore,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(GameItem gameItem)? scheduled,
    TResult? Function()? hideScoresOn,
    TResult? Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(GameItem gameItem)? scheduled,
    TResult Function()? hideScoresOn,
    TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
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
    required TResult Function(ScheduledGameState value) scheduled,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(DisplayScoreState value) hasScore,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ScheduledGameState value)? scheduled,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(DisplayScoreState value)? hasScore,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ScheduledGameState value)? scheduled,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(DisplayScoreState value)? hasScore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements GameBoxScoreState {
  const factory ErrorState() = _$ErrorStateImpl;
}

/// @nodoc
abstract class _$$ScheduledGameStateImplCopyWith<$Res> {
  factory _$$ScheduledGameStateImplCopyWith(_$ScheduledGameStateImpl value,
          $Res Function(_$ScheduledGameStateImpl) then) =
      __$$ScheduledGameStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameItem gameItem});

  $GameItemCopyWith<$Res> get gameItem;
}

/// @nodoc
class __$$ScheduledGameStateImplCopyWithImpl<$Res>
    extends _$GameBoxScoreStateCopyWithImpl<$Res, _$ScheduledGameStateImpl>
    implements _$$ScheduledGameStateImplCopyWith<$Res> {
  __$$ScheduledGameStateImplCopyWithImpl(_$ScheduledGameStateImpl _value,
      $Res Function(_$ScheduledGameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameItem = null,
  }) {
    return _then(_$ScheduledGameStateImpl(
      null == gameItem
          ? _value.gameItem
          : gameItem // ignore: cast_nullable_to_non_nullable
              as GameItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameItemCopyWith<$Res> get gameItem {
    return $GameItemCopyWith<$Res>(_value.gameItem, (value) {
      return _then(_value.copyWith(gameItem: value));
    });
  }
}

/// @nodoc

class _$ScheduledGameStateImpl implements ScheduledGameState {
  const _$ScheduledGameStateImpl(this.gameItem);

  @override
  final GameItem gameItem;

  @override
  String toString() {
    return 'GameBoxScoreState.scheduled(gameItem: $gameItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledGameStateImpl &&
            (identical(other.gameItem, gameItem) ||
                other.gameItem == gameItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledGameStateImplCopyWith<_$ScheduledGameStateImpl> get copyWith =>
      __$$ScheduledGameStateImplCopyWithImpl<_$ScheduledGameStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(GameItem gameItem) scheduled,
    required TResult Function() hideScoresOn,
    required TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)
        hasScore,
  }) {
    return scheduled(gameItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(GameItem gameItem)? scheduled,
    TResult? Function()? hideScoresOn,
    TResult? Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
  }) {
    return scheduled?.call(gameItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(GameItem gameItem)? scheduled,
    TResult Function()? hideScoresOn,
    TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
    required TResult orElse(),
  }) {
    if (scheduled != null) {
      return scheduled(gameItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ScheduledGameState value) scheduled,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(DisplayScoreState value) hasScore,
  }) {
    return scheduled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ScheduledGameState value)? scheduled,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(DisplayScoreState value)? hasScore,
  }) {
    return scheduled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ScheduledGameState value)? scheduled,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(DisplayScoreState value)? hasScore,
    required TResult orElse(),
  }) {
    if (scheduled != null) {
      return scheduled(this);
    }
    return orElse();
  }
}

abstract class ScheduledGameState implements GameBoxScoreState {
  const factory ScheduledGameState(final GameItem gameItem) =
      _$ScheduledGameStateImpl;

  GameItem get gameItem;
  @JsonKey(ignore: true)
  _$$ScheduledGameStateImplCopyWith<_$ScheduledGameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideScoresOnStateImplCopyWith<$Res> {
  factory _$$HideScoresOnStateImplCopyWith(_$HideScoresOnStateImpl value,
          $Res Function(_$HideScoresOnStateImpl) then) =
      __$$HideScoresOnStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideScoresOnStateImplCopyWithImpl<$Res>
    extends _$GameBoxScoreStateCopyWithImpl<$Res, _$HideScoresOnStateImpl>
    implements _$$HideScoresOnStateImplCopyWith<$Res> {
  __$$HideScoresOnStateImplCopyWithImpl(_$HideScoresOnStateImpl _value,
      $Res Function(_$HideScoresOnStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideScoresOnStateImpl implements HideScoresOnState {
  const _$HideScoresOnStateImpl();

  @override
  String toString() {
    return 'GameBoxScoreState.hideScoresOn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideScoresOnStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(GameItem gameItem) scheduled,
    required TResult Function() hideScoresOn,
    required TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)
        hasScore,
  }) {
    return hideScoresOn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(GameItem gameItem)? scheduled,
    TResult? Function()? hideScoresOn,
    TResult? Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
  }) {
    return hideScoresOn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(GameItem gameItem)? scheduled,
    TResult Function()? hideScoresOn,
    TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
    required TResult orElse(),
  }) {
    if (hideScoresOn != null) {
      return hideScoresOn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ScheduledGameState value) scheduled,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(DisplayScoreState value) hasScore,
  }) {
    return hideScoresOn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ScheduledGameState value)? scheduled,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(DisplayScoreState value)? hasScore,
  }) {
    return hideScoresOn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ScheduledGameState value)? scheduled,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(DisplayScoreState value)? hasScore,
    required TResult orElse(),
  }) {
    if (hideScoresOn != null) {
      return hideScoresOn(this);
    }
    return orElse();
  }
}

abstract class HideScoresOnState implements GameBoxScoreState {
  const factory HideScoresOnState() = _$HideScoresOnStateImpl;
}

/// @nodoc
abstract class _$$DisplayScoreStateImplCopyWith<$Res> {
  factory _$$DisplayScoreStateImplCopyWith(_$DisplayScoreStateImpl value,
          $Res Function(_$DisplayScoreStateImpl) then) =
      __$$DisplayScoreStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam});

  $GameItemCopyWith<$Res> get gameItem;
  $TeamBoxScoreCopyWith<$Res> get homeTeam;
  $TeamBoxScoreCopyWith<$Res> get awayTeam;
}

/// @nodoc
class __$$DisplayScoreStateImplCopyWithImpl<$Res>
    extends _$GameBoxScoreStateCopyWithImpl<$Res, _$DisplayScoreStateImpl>
    implements _$$DisplayScoreStateImplCopyWith<$Res> {
  __$$DisplayScoreStateImplCopyWithImpl(_$DisplayScoreStateImpl _value,
      $Res Function(_$DisplayScoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameItem = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
  }) {
    return _then(_$DisplayScoreStateImpl(
      null == gameItem
          ? _value.gameItem
          : gameItem // ignore: cast_nullable_to_non_nullable
              as GameItem,
      null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as TeamBoxScore,
      null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as TeamBoxScore,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameItemCopyWith<$Res> get gameItem {
    return $GameItemCopyWith<$Res>(_value.gameItem, (value) {
      return _then(_value.copyWith(gameItem: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamBoxScoreCopyWith<$Res> get homeTeam {
    return $TeamBoxScoreCopyWith<$Res>(_value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamBoxScoreCopyWith<$Res> get awayTeam {
    return $TeamBoxScoreCopyWith<$Res>(_value.awayTeam, (value) {
      return _then(_value.copyWith(awayTeam: value));
    });
  }
}

/// @nodoc

class _$DisplayScoreStateImpl implements DisplayScoreState {
  const _$DisplayScoreStateImpl(this.gameItem, this.homeTeam, this.awayTeam);

  @override
  final GameItem gameItem;
  @override
  final TeamBoxScore homeTeam;
  @override
  final TeamBoxScore awayTeam;

  @override
  String toString() {
    return 'GameBoxScoreState.hasScore(gameItem: $gameItem, homeTeam: $homeTeam, awayTeam: $awayTeam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayScoreStateImpl &&
            (identical(other.gameItem, gameItem) ||
                other.gameItem == gameItem) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameItem, homeTeam, awayTeam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayScoreStateImplCopyWith<_$DisplayScoreStateImpl> get copyWith =>
      __$$DisplayScoreStateImplCopyWithImpl<_$DisplayScoreStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(GameItem gameItem) scheduled,
    required TResult Function() hideScoresOn,
    required TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)
        hasScore,
  }) {
    return hasScore(gameItem, homeTeam, awayTeam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(GameItem gameItem)? scheduled,
    TResult? Function()? hideScoresOn,
    TResult? Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
  }) {
    return hasScore?.call(gameItem, homeTeam, awayTeam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(GameItem gameItem)? scheduled,
    TResult Function()? hideScoresOn,
    TResult Function(
            GameItem gameItem, TeamBoxScore homeTeam, TeamBoxScore awayTeam)?
        hasScore,
    required TResult orElse(),
  }) {
    if (hasScore != null) {
      return hasScore(gameItem, homeTeam, awayTeam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ScheduledGameState value) scheduled,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(DisplayScoreState value) hasScore,
  }) {
    return hasScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ScheduledGameState value)? scheduled,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(DisplayScoreState value)? hasScore,
  }) {
    return hasScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ScheduledGameState value)? scheduled,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(DisplayScoreState value)? hasScore,
    required TResult orElse(),
  }) {
    if (hasScore != null) {
      return hasScore(this);
    }
    return orElse();
  }
}

abstract class DisplayScoreState implements GameBoxScoreState {
  const factory DisplayScoreState(
      final GameItem gameItem,
      final TeamBoxScore homeTeam,
      final TeamBoxScore awayTeam) = _$DisplayScoreStateImpl;

  GameItem get gameItem;
  TeamBoxScore get homeTeam;
  TeamBoxScore get awayTeam;
  @JsonKey(ignore: true)
  _$$DisplayScoreStateImplCopyWith<_$DisplayScoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
