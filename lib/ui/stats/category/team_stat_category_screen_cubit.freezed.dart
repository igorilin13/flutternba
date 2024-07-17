// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_stat_category_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamStatCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(LeagueStatRanking ranking) displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(LeagueStatRanking ranking)? displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(LeagueStatRanking ranking)? displayData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayDataState value) displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayDataState value)? displayData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStatCategoryStateCopyWith<$Res> {
  factory $TeamStatCategoryStateCopyWith(TeamStatCategoryState value,
          $Res Function(TeamStatCategoryState) then) =
      _$TeamStatCategoryStateCopyWithImpl<$Res, TeamStatCategoryState>;
}

/// @nodoc
class _$TeamStatCategoryStateCopyWithImpl<$Res,
        $Val extends TeamStatCategoryState>
    implements $TeamStatCategoryStateCopyWith<$Res> {
  _$TeamStatCategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$TeamStatCategoryStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'TeamStatCategoryState.loading()';
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
    required TResult Function(LeagueStatRanking ranking) displayData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(LeagueStatRanking ranking)? displayData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(LeagueStatRanking ranking)? displayData,
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
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
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

abstract class LoadingState implements TeamStatCategoryState {
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
    extends _$TeamStatCategoryStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'TeamStatCategoryState.error()';
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
    required TResult Function(LeagueStatRanking ranking) displayData,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(LeagueStatRanking ranking)? displayData,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(LeagueStatRanking ranking)? displayData,
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
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
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

abstract class ErrorState implements TeamStatCategoryState {
  const factory ErrorState() = _$ErrorStateImpl;
}

/// @nodoc
abstract class _$$DisplayDataStateImplCopyWith<$Res> {
  factory _$$DisplayDataStateImplCopyWith(_$DisplayDataStateImpl value,
          $Res Function(_$DisplayDataStateImpl) then) =
      __$$DisplayDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LeagueStatRanking ranking});

  $LeagueStatRankingCopyWith<$Res> get ranking;
}

/// @nodoc
class __$$DisplayDataStateImplCopyWithImpl<$Res>
    extends _$TeamStatCategoryStateCopyWithImpl<$Res, _$DisplayDataStateImpl>
    implements _$$DisplayDataStateImplCopyWith<$Res> {
  __$$DisplayDataStateImplCopyWithImpl(_$DisplayDataStateImpl _value,
      $Res Function(_$DisplayDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ranking = null,
  }) {
    return _then(_$DisplayDataStateImpl(
      null == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as LeagueStatRanking,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueStatRankingCopyWith<$Res> get ranking {
    return $LeagueStatRankingCopyWith<$Res>(_value.ranking, (value) {
      return _then(_value.copyWith(ranking: value));
    });
  }
}

/// @nodoc

class _$DisplayDataStateImpl implements DisplayDataState {
  const _$DisplayDataStateImpl(this.ranking);

  @override
  final LeagueStatRanking ranking;

  @override
  String toString() {
    return 'TeamStatCategoryState.displayData(ranking: $ranking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayDataStateImpl &&
            (identical(other.ranking, ranking) || other.ranking == ranking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ranking);

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
    required TResult Function(LeagueStatRanking ranking) displayData,
  }) {
    return displayData(ranking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(LeagueStatRanking ranking)? displayData,
  }) {
    return displayData?.call(ranking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(LeagueStatRanking ranking)? displayData,
    required TResult orElse(),
  }) {
    if (displayData != null) {
      return displayData(ranking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayDataState value) displayData,
  }) {
    return displayData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayDataState value)? displayData,
  }) {
    return displayData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
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

abstract class DisplayDataState implements TeamStatCategoryState {
  const factory DisplayDataState(final LeagueStatRanking ranking) =
      _$DisplayDataStateImpl;

  LeagueStatRanking get ranking;
  @JsonKey(ignore: true)
  _$$DisplayDataStateImplCopyWith<_$DisplayDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
