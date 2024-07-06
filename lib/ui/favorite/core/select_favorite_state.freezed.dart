// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectFavoriteTeamState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Team> teams) display,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Team> teams)? display,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Team> teams)? display,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayState value) display,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectFavoriteTeamStateCopyWith<$Res> {
  factory $SelectFavoriteTeamStateCopyWith(SelectFavoriteTeamState value,
          $Res Function(SelectFavoriteTeamState) then) =
      _$SelectFavoriteTeamStateCopyWithImpl<$Res, SelectFavoriteTeamState>;
}

/// @nodoc
class _$SelectFavoriteTeamStateCopyWithImpl<$Res,
        $Val extends SelectFavoriteTeamState>
    implements $SelectFavoriteTeamStateCopyWith<$Res> {
  _$SelectFavoriteTeamStateCopyWithImpl(this._value, this._then);

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
    extends _$SelectFavoriteTeamStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'SelectFavoriteTeamState.loading()';
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
    required TResult Function(List<Team> teams) display,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Team> teams)? display,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Team> teams)? display,
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
    required TResult Function(DisplayState value) display,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements SelectFavoriteTeamState {
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
    extends _$SelectFavoriteTeamStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'SelectFavoriteTeamState.error()';
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
    required TResult Function(List<Team> teams) display,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Team> teams)? display,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Team> teams)? display,
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
    required TResult Function(DisplayState value) display,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements SelectFavoriteTeamState {
  const factory ErrorState() = _$ErrorStateImpl;
}

/// @nodoc
abstract class _$$DisplayStateImplCopyWith<$Res> {
  factory _$$DisplayStateImplCopyWith(
          _$DisplayStateImpl value, $Res Function(_$DisplayStateImpl) then) =
      __$$DisplayStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Team> teams});
}

/// @nodoc
class __$$DisplayStateImplCopyWithImpl<$Res>
    extends _$SelectFavoriteTeamStateCopyWithImpl<$Res, _$DisplayStateImpl>
    implements _$$DisplayStateImplCopyWith<$Res> {
  __$$DisplayStateImplCopyWithImpl(
      _$DisplayStateImpl _value, $Res Function(_$DisplayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teams = null,
  }) {
    return _then(_$DisplayStateImpl(
      null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ));
  }
}

/// @nodoc

class _$DisplayStateImpl implements DisplayState {
  const _$DisplayStateImpl(final List<Team> teams) : _teams = teams;

  final List<Team> _teams;
  @override
  List<Team> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  String toString() {
    return 'SelectFavoriteTeamState.display(teams: $teams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayStateImpl &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayStateImplCopyWith<_$DisplayStateImpl> get copyWith =>
      __$$DisplayStateImplCopyWithImpl<_$DisplayStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Team> teams) display,
  }) {
    return display(teams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Team> teams)? display,
  }) {
    return display?.call(teams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Team> teams)? display,
    required TResult orElse(),
  }) {
    if (display != null) {
      return display(teams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayState value) display,
  }) {
    return display(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) {
    return display?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) {
    if (display != null) {
      return display(this);
    }
    return orElse();
  }
}

abstract class DisplayState implements SelectFavoriteTeamState {
  const factory DisplayState(final List<Team> teams) = _$DisplayStateImpl;

  List<Team> get teams;
  @JsonKey(ignore: true)
  _$$DisplayStateImplCopyWith<_$DisplayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
