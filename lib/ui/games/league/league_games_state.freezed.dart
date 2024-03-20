// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_games_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeagueGamesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noGamesAvailable,
    required TResult Function() error,
    required TResult Function(List<GameItem> games) displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noGamesAvailable,
    TResult? Function()? error,
    TResult? Function(List<GameItem> games)? displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noGamesAvailable,
    TResult Function()? error,
    TResult Function(List<GameItem> games)? displayData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayDataState value) displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueGamesStateCopyWith<$Res> {
  factory $LeagueGamesStateCopyWith(
          LeagueGamesState value, $Res Function(LeagueGamesState) then) =
      _$LeagueGamesStateCopyWithImpl<$Res, LeagueGamesState>;
}

/// @nodoc
class _$LeagueGamesStateCopyWithImpl<$Res, $Val extends LeagueGamesState>
    implements $LeagueGamesStateCopyWith<$Res> {
  _$LeagueGamesStateCopyWithImpl(this._value, this._then);

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
    extends _$LeagueGamesStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'LeagueGamesState.loading()';
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
    required TResult Function() noGamesAvailable,
    required TResult Function() error,
    required TResult Function(List<GameItem> games) displayData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noGamesAvailable,
    TResult? Function()? error,
    TResult? Function(List<GameItem> games)? displayData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noGamesAvailable,
    TResult Function()? error,
    TResult Function(List<GameItem> games)? displayData,
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
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements LeagueGamesState {
  const factory LoadingState() = _$LoadingStateImpl;
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
    extends _$LeagueGamesStateCopyWithImpl<$Res, _$NoGamesAvailableStateImpl>
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
    return 'LeagueGamesState.noGamesAvailable()';
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
    required TResult Function() noGamesAvailable,
    required TResult Function() error,
    required TResult Function(List<GameItem> games) displayData,
  }) {
    return noGamesAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noGamesAvailable,
    TResult? Function()? error,
    TResult? Function(List<GameItem> games)? displayData,
  }) {
    return noGamesAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noGamesAvailable,
    TResult Function()? error,
    TResult Function(List<GameItem> games)? displayData,
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
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return noGamesAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return noGamesAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) {
    if (noGamesAvailable != null) {
      return noGamesAvailable(this);
    }
    return orElse();
  }
}

abstract class NoGamesAvailableState implements LeagueGamesState {
  const factory NoGamesAvailableState() = _$NoGamesAvailableStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$LeagueGamesStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'LeagueGamesState.error()';
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
    required TResult Function() noGamesAvailable,
    required TResult Function() error,
    required TResult Function(List<GameItem> games) displayData,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noGamesAvailable,
    TResult? Function()? error,
    TResult? Function(List<GameItem> games)? displayData,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noGamesAvailable,
    TResult Function()? error,
    TResult Function(List<GameItem> games)? displayData,
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
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements LeagueGamesState {
  const factory ErrorState() = _$ErrorStateImpl;
}

/// @nodoc
abstract class _$$DisplayDataStateImplCopyWith<$Res> {
  factory _$$DisplayDataStateImplCopyWith(_$DisplayDataStateImpl value,
          $Res Function(_$DisplayDataStateImpl) then) =
      __$$DisplayDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GameItem> games});
}

/// @nodoc
class __$$DisplayDataStateImplCopyWithImpl<$Res>
    extends _$LeagueGamesStateCopyWithImpl<$Res, _$DisplayDataStateImpl>
    implements _$$DisplayDataStateImplCopyWith<$Res> {
  __$$DisplayDataStateImplCopyWithImpl(_$DisplayDataStateImpl _value,
      $Res Function(_$DisplayDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_$DisplayDataStateImpl(
      null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameItem>,
    ));
  }
}

/// @nodoc

class _$DisplayDataStateImpl implements DisplayDataState {
  const _$DisplayDataStateImpl(final List<GameItem> games) : _games = games;

  final List<GameItem> _games;
  @override
  List<GameItem> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  String toString() {
    return 'LeagueGamesState.displayData(games: $games)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayDataStateImpl &&
            const DeepCollectionEquality().equals(other._games, _games));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_games));

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
    required TResult Function() noGamesAvailable,
    required TResult Function() error,
    required TResult Function(List<GameItem> games) displayData,
  }) {
    return displayData(games);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noGamesAvailable,
    TResult? Function()? error,
    TResult? Function(List<GameItem> games)? displayData,
  }) {
    return displayData?.call(games);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noGamesAvailable,
    TResult Function()? error,
    TResult Function(List<GameItem> games)? displayData,
    required TResult orElse(),
  }) {
    if (displayData != null) {
      return displayData(games);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(NoGamesAvailableState value) noGamesAvailable,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return displayData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return displayData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(NoGamesAvailableState value)? noGamesAvailable,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) {
    if (displayData != null) {
      return displayData(this);
    }
    return orElse();
  }
}

abstract class DisplayDataState implements LeagueGamesState {
  const factory DisplayDataState(final List<GameItem> games) =
      _$DisplayDataStateImpl;

  List<GameItem> get games;
  @JsonKey(ignore: true)
  _$$DisplayDataStateImplCopyWith<_$DisplayDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
