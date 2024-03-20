// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  bool? get shouldHideScores => throw _privateConstructorUsedError;
  FavoriteTeamSettingState get favoriteTeamState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {bool? shouldHideScores, FavoriteTeamSettingState favoriteTeamState});

  $FavoriteTeamSettingStateCopyWith<$Res> get favoriteTeamState;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldHideScores = freezed,
    Object? favoriteTeamState = null,
  }) {
    return _then(_value.copyWith(
      shouldHideScores: freezed == shouldHideScores
          ? _value.shouldHideScores
          : shouldHideScores // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoriteTeamState: null == favoriteTeamState
          ? _value.favoriteTeamState
          : favoriteTeamState // ignore: cast_nullable_to_non_nullable
              as FavoriteTeamSettingState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoriteTeamSettingStateCopyWith<$Res> get favoriteTeamState {
    return $FavoriteTeamSettingStateCopyWith<$Res>(_value.favoriteTeamState,
        (value) {
      return _then(_value.copyWith(favoriteTeamState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? shouldHideScores, FavoriteTeamSettingState favoriteTeamState});

  @override
  $FavoriteTeamSettingStateCopyWith<$Res> get favoriteTeamState;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldHideScores = freezed,
    Object? favoriteTeamState = null,
  }) {
    return _then(_$SettingsStateImpl(
      shouldHideScores: freezed == shouldHideScores
          ? _value.shouldHideScores
          : shouldHideScores // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoriteTeamState: null == favoriteTeamState
          ? _value.favoriteTeamState
          : favoriteTeamState // ignore: cast_nullable_to_non_nullable
              as FavoriteTeamSettingState,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl(
      {required this.shouldHideScores, required this.favoriteTeamState});

  @override
  final bool? shouldHideScores;
  @override
  final FavoriteTeamSettingState favoriteTeamState;

  @override
  String toString() {
    return 'SettingsState(shouldHideScores: $shouldHideScores, favoriteTeamState: $favoriteTeamState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.shouldHideScores, shouldHideScores) ||
                other.shouldHideScores == shouldHideScores) &&
            (identical(other.favoriteTeamState, favoriteTeamState) ||
                other.favoriteTeamState == favoriteTeamState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, shouldHideScores, favoriteTeamState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
          {required final bool? shouldHideScores,
          required final FavoriteTeamSettingState favoriteTeamState}) =
      _$SettingsStateImpl;

  @override
  bool? get shouldHideScores;
  @override
  FavoriteTeamSettingState get favoriteTeamState;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteTeamSettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFavorite,
    required TResult Function(Team team) hasFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noFavorite,
    TResult? Function(Team team)? hasFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFavorite,
    TResult Function(Team team)? hasFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFavoriteTeamState value) loading,
    required TResult Function(FavoriteTeamErrorState value) error,
    required TResult Function(NoFavoriteTeamState value) noFavorite,
    required TResult Function(HasFavoriteTeamState value) hasFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingFavoriteTeamState value)? loading,
    TResult? Function(FavoriteTeamErrorState value)? error,
    TResult? Function(NoFavoriteTeamState value)? noFavorite,
    TResult? Function(HasFavoriteTeamState value)? hasFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFavoriteTeamState value)? loading,
    TResult Function(FavoriteTeamErrorState value)? error,
    TResult Function(NoFavoriteTeamState value)? noFavorite,
    TResult Function(HasFavoriteTeamState value)? hasFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTeamSettingStateCopyWith<$Res> {
  factory $FavoriteTeamSettingStateCopyWith(FavoriteTeamSettingState value,
          $Res Function(FavoriteTeamSettingState) then) =
      _$FavoriteTeamSettingStateCopyWithImpl<$Res, FavoriteTeamSettingState>;
}

/// @nodoc
class _$FavoriteTeamSettingStateCopyWithImpl<$Res,
        $Val extends FavoriteTeamSettingState>
    implements $FavoriteTeamSettingStateCopyWith<$Res> {
  _$FavoriteTeamSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingFavoriteTeamStateImplCopyWith<$Res> {
  factory _$$LoadingFavoriteTeamStateImplCopyWith(
          _$LoadingFavoriteTeamStateImpl value,
          $Res Function(_$LoadingFavoriteTeamStateImpl) then) =
      __$$LoadingFavoriteTeamStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFavoriteTeamStateImplCopyWithImpl<$Res>
    extends _$FavoriteTeamSettingStateCopyWithImpl<$Res,
        _$LoadingFavoriteTeamStateImpl>
    implements _$$LoadingFavoriteTeamStateImplCopyWith<$Res> {
  __$$LoadingFavoriteTeamStateImplCopyWithImpl(
      _$LoadingFavoriteTeamStateImpl _value,
      $Res Function(_$LoadingFavoriteTeamStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingFavoriteTeamStateImpl implements LoadingFavoriteTeamState {
  const _$LoadingFavoriteTeamStateImpl();

  @override
  String toString() {
    return 'FavoriteTeamSettingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingFavoriteTeamStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFavorite,
    required TResult Function(Team team) hasFavorite,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noFavorite,
    TResult? Function(Team team)? hasFavorite,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFavorite,
    TResult Function(Team team)? hasFavorite,
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
    required TResult Function(LoadingFavoriteTeamState value) loading,
    required TResult Function(FavoriteTeamErrorState value) error,
    required TResult Function(NoFavoriteTeamState value) noFavorite,
    required TResult Function(HasFavoriteTeamState value) hasFavorite,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingFavoriteTeamState value)? loading,
    TResult? Function(FavoriteTeamErrorState value)? error,
    TResult? Function(NoFavoriteTeamState value)? noFavorite,
    TResult? Function(HasFavoriteTeamState value)? hasFavorite,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFavoriteTeamState value)? loading,
    TResult Function(FavoriteTeamErrorState value)? error,
    TResult Function(NoFavoriteTeamState value)? noFavorite,
    TResult Function(HasFavoriteTeamState value)? hasFavorite,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingFavoriteTeamState implements FavoriteTeamSettingState {
  const factory LoadingFavoriteTeamState() = _$LoadingFavoriteTeamStateImpl;
}

/// @nodoc
abstract class _$$FavoriteTeamErrorStateImplCopyWith<$Res> {
  factory _$$FavoriteTeamErrorStateImplCopyWith(
          _$FavoriteTeamErrorStateImpl value,
          $Res Function(_$FavoriteTeamErrorStateImpl) then) =
      __$$FavoriteTeamErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteTeamErrorStateImplCopyWithImpl<$Res>
    extends _$FavoriteTeamSettingStateCopyWithImpl<$Res,
        _$FavoriteTeamErrorStateImpl>
    implements _$$FavoriteTeamErrorStateImplCopyWith<$Res> {
  __$$FavoriteTeamErrorStateImplCopyWithImpl(
      _$FavoriteTeamErrorStateImpl _value,
      $Res Function(_$FavoriteTeamErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteTeamErrorStateImpl implements FavoriteTeamErrorState {
  const _$FavoriteTeamErrorStateImpl();

  @override
  String toString() {
    return 'FavoriteTeamSettingState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteTeamErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFavorite,
    required TResult Function(Team team) hasFavorite,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noFavorite,
    TResult? Function(Team team)? hasFavorite,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFavorite,
    TResult Function(Team team)? hasFavorite,
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
    required TResult Function(LoadingFavoriteTeamState value) loading,
    required TResult Function(FavoriteTeamErrorState value) error,
    required TResult Function(NoFavoriteTeamState value) noFavorite,
    required TResult Function(HasFavoriteTeamState value) hasFavorite,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingFavoriteTeamState value)? loading,
    TResult? Function(FavoriteTeamErrorState value)? error,
    TResult? Function(NoFavoriteTeamState value)? noFavorite,
    TResult? Function(HasFavoriteTeamState value)? hasFavorite,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFavoriteTeamState value)? loading,
    TResult Function(FavoriteTeamErrorState value)? error,
    TResult Function(NoFavoriteTeamState value)? noFavorite,
    TResult Function(HasFavoriteTeamState value)? hasFavorite,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoriteTeamErrorState implements FavoriteTeamSettingState {
  const factory FavoriteTeamErrorState() = _$FavoriteTeamErrorStateImpl;
}

/// @nodoc
abstract class _$$NoFavoriteTeamStateImplCopyWith<$Res> {
  factory _$$NoFavoriteTeamStateImplCopyWith(_$NoFavoriteTeamStateImpl value,
          $Res Function(_$NoFavoriteTeamStateImpl) then) =
      __$$NoFavoriteTeamStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoFavoriteTeamStateImplCopyWithImpl<$Res>
    extends _$FavoriteTeamSettingStateCopyWithImpl<$Res,
        _$NoFavoriteTeamStateImpl>
    implements _$$NoFavoriteTeamStateImplCopyWith<$Res> {
  __$$NoFavoriteTeamStateImplCopyWithImpl(_$NoFavoriteTeamStateImpl _value,
      $Res Function(_$NoFavoriteTeamStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoFavoriteTeamStateImpl implements NoFavoriteTeamState {
  const _$NoFavoriteTeamStateImpl();

  @override
  String toString() {
    return 'FavoriteTeamSettingState.noFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoFavoriteTeamStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFavorite,
    required TResult Function(Team team) hasFavorite,
  }) {
    return noFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noFavorite,
    TResult? Function(Team team)? hasFavorite,
  }) {
    return noFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFavorite,
    TResult Function(Team team)? hasFavorite,
    required TResult orElse(),
  }) {
    if (noFavorite != null) {
      return noFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFavoriteTeamState value) loading,
    required TResult Function(FavoriteTeamErrorState value) error,
    required TResult Function(NoFavoriteTeamState value) noFavorite,
    required TResult Function(HasFavoriteTeamState value) hasFavorite,
  }) {
    return noFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingFavoriteTeamState value)? loading,
    TResult? Function(FavoriteTeamErrorState value)? error,
    TResult? Function(NoFavoriteTeamState value)? noFavorite,
    TResult? Function(HasFavoriteTeamState value)? hasFavorite,
  }) {
    return noFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFavoriteTeamState value)? loading,
    TResult Function(FavoriteTeamErrorState value)? error,
    TResult Function(NoFavoriteTeamState value)? noFavorite,
    TResult Function(HasFavoriteTeamState value)? hasFavorite,
    required TResult orElse(),
  }) {
    if (noFavorite != null) {
      return noFavorite(this);
    }
    return orElse();
  }
}

abstract class NoFavoriteTeamState implements FavoriteTeamSettingState {
  const factory NoFavoriteTeamState() = _$NoFavoriteTeamStateImpl;
}

/// @nodoc
abstract class _$$HasFavoriteTeamStateImplCopyWith<$Res> {
  factory _$$HasFavoriteTeamStateImplCopyWith(_$HasFavoriteTeamStateImpl value,
          $Res Function(_$HasFavoriteTeamStateImpl) then) =
      __$$HasFavoriteTeamStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Team team});

  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$HasFavoriteTeamStateImplCopyWithImpl<$Res>
    extends _$FavoriteTeamSettingStateCopyWithImpl<$Res,
        _$HasFavoriteTeamStateImpl>
    implements _$$HasFavoriteTeamStateImplCopyWith<$Res> {
  __$$HasFavoriteTeamStateImplCopyWithImpl(_$HasFavoriteTeamStateImpl _value,
      $Res Function(_$HasFavoriteTeamStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
  }) {
    return _then(_$HasFavoriteTeamStateImpl(
      null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value));
    });
  }
}

/// @nodoc

class _$HasFavoriteTeamStateImpl implements HasFavoriteTeamState {
  const _$HasFavoriteTeamStateImpl(this.team);

  @override
  final Team team;

  @override
  String toString() {
    return 'FavoriteTeamSettingState.hasFavorite(team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasFavoriteTeamStateImpl &&
            (identical(other.team, team) || other.team == team));
  }

  @override
  int get hashCode => Object.hash(runtimeType, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasFavoriteTeamStateImplCopyWith<_$HasFavoriteTeamStateImpl>
      get copyWith =>
          __$$HasFavoriteTeamStateImplCopyWithImpl<_$HasFavoriteTeamStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFavorite,
    required TResult Function(Team team) hasFavorite,
  }) {
    return hasFavorite(team);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noFavorite,
    TResult? Function(Team team)? hasFavorite,
  }) {
    return hasFavorite?.call(team);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFavorite,
    TResult Function(Team team)? hasFavorite,
    required TResult orElse(),
  }) {
    if (hasFavorite != null) {
      return hasFavorite(team);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFavoriteTeamState value) loading,
    required TResult Function(FavoriteTeamErrorState value) error,
    required TResult Function(NoFavoriteTeamState value) noFavorite,
    required TResult Function(HasFavoriteTeamState value) hasFavorite,
  }) {
    return hasFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingFavoriteTeamState value)? loading,
    TResult? Function(FavoriteTeamErrorState value)? error,
    TResult? Function(NoFavoriteTeamState value)? noFavorite,
    TResult? Function(HasFavoriteTeamState value)? hasFavorite,
  }) {
    return hasFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFavoriteTeamState value)? loading,
    TResult Function(FavoriteTeamErrorState value)? error,
    TResult Function(NoFavoriteTeamState value)? noFavorite,
    TResult Function(HasFavoriteTeamState value)? hasFavorite,
    required TResult orElse(),
  }) {
    if (hasFavorite != null) {
      return hasFavorite(this);
    }
    return orElse();
  }
}

abstract class HasFavoriteTeamState implements FavoriteTeamSettingState {
  const factory HasFavoriteTeamState(final Team team) =
      _$HasFavoriteTeamStateImpl;

  Team get team;
  @JsonKey(ignore: true)
  _$$HasFavoriteTeamStateImplCopyWith<_$HasFavoriteTeamStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
