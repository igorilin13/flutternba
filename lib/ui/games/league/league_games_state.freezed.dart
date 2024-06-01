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
  LeagueDatesModel get datesModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LeagueDatesModel datesModel) loading,
    required TResult Function(LeagueDatesModel datesModel) noGamesAvailable,
    required TResult Function(LeagueDatesModel datesModel) error,
    required TResult Function(List<GameItem> games, LeagueDatesModel datesModel)
        displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LeagueDatesModel datesModel)? loading,
    TResult? Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult? Function(LeagueDatesModel datesModel)? error,
    TResult? Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LeagueDatesModel datesModel)? loading,
    TResult Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult Function(LeagueDatesModel datesModel)? error,
    TResult Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
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

  @JsonKey(ignore: true)
  $LeagueGamesStateCopyWith<LeagueGamesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueGamesStateCopyWith<$Res> {
  factory $LeagueGamesStateCopyWith(
          LeagueGamesState value, $Res Function(LeagueGamesState) then) =
      _$LeagueGamesStateCopyWithImpl<$Res, LeagueGamesState>;
  @useResult
  $Res call({LeagueDatesModel datesModel});

  $LeagueDatesModelCopyWith<$Res> get datesModel;
}

/// @nodoc
class _$LeagueGamesStateCopyWithImpl<$Res, $Val extends LeagueGamesState>
    implements $LeagueGamesStateCopyWith<$Res> {
  _$LeagueGamesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datesModel = null,
  }) {
    return _then(_value.copyWith(
      datesModel: null == datesModel
          ? _value.datesModel
          : datesModel // ignore: cast_nullable_to_non_nullable
              as LeagueDatesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueDatesModelCopyWith<$Res> get datesModel {
    return $LeagueDatesModelCopyWith<$Res>(_value.datesModel, (value) {
      return _then(_value.copyWith(datesModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res>
    implements $LeagueGamesStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LeagueDatesModel datesModel});

  @override
  $LeagueDatesModelCopyWith<$Res> get datesModel;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$LeagueGamesStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datesModel = null,
  }) {
    return _then(_$LoadingStateImpl(
      null == datesModel
          ? _value.datesModel
          : datesModel // ignore: cast_nullable_to_non_nullable
              as LeagueDatesModel,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl(this.datesModel);

  @override
  final LeagueDatesModel datesModel;

  @override
  String toString() {
    return 'LeagueGamesState.loading(datesModel: $datesModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.datesModel, datesModel) ||
                other.datesModel == datesModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LeagueDatesModel datesModel) loading,
    required TResult Function(LeagueDatesModel datesModel) noGamesAvailable,
    required TResult Function(LeagueDatesModel datesModel) error,
    required TResult Function(List<GameItem> games, LeagueDatesModel datesModel)
        displayData,
  }) {
    return loading(datesModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LeagueDatesModel datesModel)? loading,
    TResult? Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult? Function(LeagueDatesModel datesModel)? error,
    TResult? Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
  }) {
    return loading?.call(datesModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LeagueDatesModel datesModel)? loading,
    TResult Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult Function(LeagueDatesModel datesModel)? error,
    TResult Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(datesModel);
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
  const factory LoadingState(final LeagueDatesModel datesModel) =
      _$LoadingStateImpl;

  @override
  LeagueDatesModel get datesModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoGamesAvailableStateImplCopyWith<$Res>
    implements $LeagueGamesStateCopyWith<$Res> {
  factory _$$NoGamesAvailableStateImplCopyWith(
          _$NoGamesAvailableStateImpl value,
          $Res Function(_$NoGamesAvailableStateImpl) then) =
      __$$NoGamesAvailableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LeagueDatesModel datesModel});

  @override
  $LeagueDatesModelCopyWith<$Res> get datesModel;
}

/// @nodoc
class __$$NoGamesAvailableStateImplCopyWithImpl<$Res>
    extends _$LeagueGamesStateCopyWithImpl<$Res, _$NoGamesAvailableStateImpl>
    implements _$$NoGamesAvailableStateImplCopyWith<$Res> {
  __$$NoGamesAvailableStateImplCopyWithImpl(_$NoGamesAvailableStateImpl _value,
      $Res Function(_$NoGamesAvailableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datesModel = null,
  }) {
    return _then(_$NoGamesAvailableStateImpl(
      null == datesModel
          ? _value.datesModel
          : datesModel // ignore: cast_nullable_to_non_nullable
              as LeagueDatesModel,
    ));
  }
}

/// @nodoc

class _$NoGamesAvailableStateImpl implements NoGamesAvailableState {
  const _$NoGamesAvailableStateImpl(this.datesModel);

  @override
  final LeagueDatesModel datesModel;

  @override
  String toString() {
    return 'LeagueGamesState.noGamesAvailable(datesModel: $datesModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoGamesAvailableStateImpl &&
            (identical(other.datesModel, datesModel) ||
                other.datesModel == datesModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoGamesAvailableStateImplCopyWith<_$NoGamesAvailableStateImpl>
      get copyWith => __$$NoGamesAvailableStateImplCopyWithImpl<
          _$NoGamesAvailableStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LeagueDatesModel datesModel) loading,
    required TResult Function(LeagueDatesModel datesModel) noGamesAvailable,
    required TResult Function(LeagueDatesModel datesModel) error,
    required TResult Function(List<GameItem> games, LeagueDatesModel datesModel)
        displayData,
  }) {
    return noGamesAvailable(datesModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LeagueDatesModel datesModel)? loading,
    TResult? Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult? Function(LeagueDatesModel datesModel)? error,
    TResult? Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
  }) {
    return noGamesAvailable?.call(datesModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LeagueDatesModel datesModel)? loading,
    TResult Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult Function(LeagueDatesModel datesModel)? error,
    TResult Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
    required TResult orElse(),
  }) {
    if (noGamesAvailable != null) {
      return noGamesAvailable(datesModel);
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
  const factory NoGamesAvailableState(final LeagueDatesModel datesModel) =
      _$NoGamesAvailableStateImpl;

  @override
  LeagueDatesModel get datesModel;
  @override
  @JsonKey(ignore: true)
  _$$NoGamesAvailableStateImplCopyWith<_$NoGamesAvailableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res>
    implements $LeagueGamesStateCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LeagueDatesModel datesModel});

  @override
  $LeagueDatesModelCopyWith<$Res> get datesModel;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$LeagueGamesStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datesModel = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == datesModel
          ? _value.datesModel
          : datesModel // ignore: cast_nullable_to_non_nullable
              as LeagueDatesModel,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.datesModel);

  @override
  final LeagueDatesModel datesModel;

  @override
  String toString() {
    return 'LeagueGamesState.error(datesModel: $datesModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.datesModel, datesModel) ||
                other.datesModel == datesModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LeagueDatesModel datesModel) loading,
    required TResult Function(LeagueDatesModel datesModel) noGamesAvailable,
    required TResult Function(LeagueDatesModel datesModel) error,
    required TResult Function(List<GameItem> games, LeagueDatesModel datesModel)
        displayData,
  }) {
    return error(datesModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LeagueDatesModel datesModel)? loading,
    TResult? Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult? Function(LeagueDatesModel datesModel)? error,
    TResult? Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
  }) {
    return error?.call(datesModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LeagueDatesModel datesModel)? loading,
    TResult Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult Function(LeagueDatesModel datesModel)? error,
    TResult Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(datesModel);
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
  const factory ErrorState(final LeagueDatesModel datesModel) =
      _$ErrorStateImpl;

  @override
  LeagueDatesModel get datesModel;
  @override
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayDataStateImplCopyWith<$Res>
    implements $LeagueGamesStateCopyWith<$Res> {
  factory _$$DisplayDataStateImplCopyWith(_$DisplayDataStateImpl value,
          $Res Function(_$DisplayDataStateImpl) then) =
      __$$DisplayDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GameItem> games, LeagueDatesModel datesModel});

  @override
  $LeagueDatesModelCopyWith<$Res> get datesModel;
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
    Object? datesModel = null,
  }) {
    return _then(_$DisplayDataStateImpl(
      null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameItem>,
      null == datesModel
          ? _value.datesModel
          : datesModel // ignore: cast_nullable_to_non_nullable
              as LeagueDatesModel,
    ));
  }
}

/// @nodoc

class _$DisplayDataStateImpl implements DisplayDataState {
  const _$DisplayDataStateImpl(final List<GameItem> games, this.datesModel)
      : _games = games;

  final List<GameItem> _games;
  @override
  List<GameItem> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  final LeagueDatesModel datesModel;

  @override
  String toString() {
    return 'LeagueGamesState.displayData(games: $games, datesModel: $datesModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayDataStateImpl &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            (identical(other.datesModel, datesModel) ||
                other.datesModel == datesModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_games), datesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayDataStateImplCopyWith<_$DisplayDataStateImpl> get copyWith =>
      __$$DisplayDataStateImplCopyWithImpl<_$DisplayDataStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LeagueDatesModel datesModel) loading,
    required TResult Function(LeagueDatesModel datesModel) noGamesAvailable,
    required TResult Function(LeagueDatesModel datesModel) error,
    required TResult Function(List<GameItem> games, LeagueDatesModel datesModel)
        displayData,
  }) {
    return displayData(games, datesModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LeagueDatesModel datesModel)? loading,
    TResult? Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult? Function(LeagueDatesModel datesModel)? error,
    TResult? Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
  }) {
    return displayData?.call(games, datesModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LeagueDatesModel datesModel)? loading,
    TResult Function(LeagueDatesModel datesModel)? noGamesAvailable,
    TResult Function(LeagueDatesModel datesModel)? error,
    TResult Function(List<GameItem> games, LeagueDatesModel datesModel)?
        displayData,
    required TResult orElse(),
  }) {
    if (displayData != null) {
      return displayData(games, datesModel);
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
  const factory DisplayDataState(
          final List<GameItem> games, final LeagueDatesModel datesModel) =
      _$DisplayDataStateImpl;

  List<GameItem> get games;
  @override
  LeagueDatesModel get datesModel;
  @override
  @JsonKey(ignore: true)
  _$$DisplayDataStateImplCopyWith<_$DisplayDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
