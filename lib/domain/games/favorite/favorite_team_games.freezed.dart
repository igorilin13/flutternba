// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_team_games.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteTeamGamesResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noFavorite,
    required TResult Function(Result<List<GameItem>>? games) hasFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noFavorite,
    TResult? Function(Result<List<GameItem>>? games)? hasFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noFavorite,
    TResult Function(Result<List<GameItem>>? games)? hasFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoFavoriteTeam value) noFavorite,
    required TResult Function(HasFavoriteTeam value) hasFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoFavoriteTeam value)? noFavorite,
    TResult? Function(HasFavoriteTeam value)? hasFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoFavoriteTeam value)? noFavorite,
    TResult Function(HasFavoriteTeam value)? hasFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTeamGamesResultCopyWith<$Res> {
  factory $FavoriteTeamGamesResultCopyWith(FavoriteTeamGamesResult value,
          $Res Function(FavoriteTeamGamesResult) then) =
      _$FavoriteTeamGamesResultCopyWithImpl<$Res, FavoriteTeamGamesResult>;
}

/// @nodoc
class _$FavoriteTeamGamesResultCopyWithImpl<$Res,
        $Val extends FavoriteTeamGamesResult>
    implements $FavoriteTeamGamesResultCopyWith<$Res> {
  _$FavoriteTeamGamesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoFavoriteTeamImplCopyWith<$Res> {
  factory _$$NoFavoriteTeamImplCopyWith(_$NoFavoriteTeamImpl value,
          $Res Function(_$NoFavoriteTeamImpl) then) =
      __$$NoFavoriteTeamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoFavoriteTeamImplCopyWithImpl<$Res>
    extends _$FavoriteTeamGamesResultCopyWithImpl<$Res, _$NoFavoriteTeamImpl>
    implements _$$NoFavoriteTeamImplCopyWith<$Res> {
  __$$NoFavoriteTeamImplCopyWithImpl(
      _$NoFavoriteTeamImpl _value, $Res Function(_$NoFavoriteTeamImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoFavoriteTeamImpl implements NoFavoriteTeam {
  const _$NoFavoriteTeamImpl();

  @override
  String toString() {
    return 'FavoriteTeamGamesResult.noFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoFavoriteTeamImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noFavorite,
    required TResult Function(Result<List<GameItem>>? games) hasFavorite,
  }) {
    return noFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noFavorite,
    TResult? Function(Result<List<GameItem>>? games)? hasFavorite,
  }) {
    return noFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noFavorite,
    TResult Function(Result<List<GameItem>>? games)? hasFavorite,
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
    required TResult Function(NoFavoriteTeam value) noFavorite,
    required TResult Function(HasFavoriteTeam value) hasFavorite,
  }) {
    return noFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoFavoriteTeam value)? noFavorite,
    TResult? Function(HasFavoriteTeam value)? hasFavorite,
  }) {
    return noFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoFavoriteTeam value)? noFavorite,
    TResult Function(HasFavoriteTeam value)? hasFavorite,
    required TResult orElse(),
  }) {
    if (noFavorite != null) {
      return noFavorite(this);
    }
    return orElse();
  }
}

abstract class NoFavoriteTeam implements FavoriteTeamGamesResult {
  const factory NoFavoriteTeam() = _$NoFavoriteTeamImpl;
}

/// @nodoc
abstract class _$$HasFavoriteTeamImplCopyWith<$Res> {
  factory _$$HasFavoriteTeamImplCopyWith(_$HasFavoriteTeamImpl value,
          $Res Function(_$HasFavoriteTeamImpl) then) =
      __$$HasFavoriteTeamImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Result<List<GameItem>>? games});
}

/// @nodoc
class __$$HasFavoriteTeamImplCopyWithImpl<$Res>
    extends _$FavoriteTeamGamesResultCopyWithImpl<$Res, _$HasFavoriteTeamImpl>
    implements _$$HasFavoriteTeamImplCopyWith<$Res> {
  __$$HasFavoriteTeamImplCopyWithImpl(
      _$HasFavoriteTeamImpl _value, $Res Function(_$HasFavoriteTeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = freezed,
  }) {
    return _then(_$HasFavoriteTeamImpl(
      freezed == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as Result<List<GameItem>>?,
    ));
  }
}

/// @nodoc

class _$HasFavoriteTeamImpl implements HasFavoriteTeam {
  const _$HasFavoriteTeamImpl(this.games);

  @override
  final Result<List<GameItem>>? games;

  @override
  String toString() {
    return 'FavoriteTeamGamesResult.hasFavorite(games: $games)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasFavoriteTeamImpl &&
            (identical(other.games, games) || other.games == games));
  }

  @override
  int get hashCode => Object.hash(runtimeType, games);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasFavoriteTeamImplCopyWith<_$HasFavoriteTeamImpl> get copyWith =>
      __$$HasFavoriteTeamImplCopyWithImpl<_$HasFavoriteTeamImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noFavorite,
    required TResult Function(Result<List<GameItem>>? games) hasFavorite,
  }) {
    return hasFavorite(games);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noFavorite,
    TResult? Function(Result<List<GameItem>>? games)? hasFavorite,
  }) {
    return hasFavorite?.call(games);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noFavorite,
    TResult Function(Result<List<GameItem>>? games)? hasFavorite,
    required TResult orElse(),
  }) {
    if (hasFavorite != null) {
      return hasFavorite(games);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoFavoriteTeam value) noFavorite,
    required TResult Function(HasFavoriteTeam value) hasFavorite,
  }) {
    return hasFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoFavoriteTeam value)? noFavorite,
    TResult? Function(HasFavoriteTeam value)? hasFavorite,
  }) {
    return hasFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoFavoriteTeam value)? noFavorite,
    TResult Function(HasFavoriteTeam value)? hasFavorite,
    required TResult orElse(),
  }) {
    if (hasFavorite != null) {
      return hasFavorite(this);
    }
    return orElse();
  }
}

abstract class HasFavoriteTeam implements FavoriteTeamGamesResult {
  const factory HasFavoriteTeam(final Result<List<GameItem>>? games) =
      _$HasFavoriteTeamImpl;

  Result<List<GameItem>>? get games;
  @JsonKey(ignore: true)
  _$$HasFavoriteTeamImplCopyWith<_$HasFavoriteTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
