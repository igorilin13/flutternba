// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box_score_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameBoxScoreModel {
  Game? get gameInfo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? gameInfo) loading,
    required TResult Function(Game gameInfo) scheduled,
    required TResult Function(
            Game gameInfo, TeamBoxScore home, TeamBoxScore away)
        hasScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Game? gameInfo)? loading,
    TResult? Function(Game gameInfo)? scheduled,
    TResult? Function(Game gameInfo, TeamBoxScore home, TeamBoxScore away)?
        hasScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? gameInfo)? loading,
    TResult Function(Game gameInfo)? scheduled,
    TResult Function(Game gameInfo, TeamBoxScore home, TeamBoxScore away)?
        hasScore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBoxScore value) loading,
    required TResult Function(ScheduledGame value) scheduled,
    required TResult Function(HasBoxScore value) hasScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBoxScore value)? loading,
    TResult? Function(ScheduledGame value)? scheduled,
    TResult? Function(HasBoxScore value)? hasScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBoxScore value)? loading,
    TResult Function(ScheduledGame value)? scheduled,
    TResult Function(HasBoxScore value)? hasScore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameBoxScoreModelCopyWith<GameBoxScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameBoxScoreModelCopyWith<$Res> {
  factory $GameBoxScoreModelCopyWith(
          GameBoxScoreModel value, $Res Function(GameBoxScoreModel) then) =
      _$GameBoxScoreModelCopyWithImpl<$Res, GameBoxScoreModel>;
  @useResult
  $Res call({Game gameInfo});

  $GameCopyWith<$Res>? get gameInfo;
}

/// @nodoc
class _$GameBoxScoreModelCopyWithImpl<$Res, $Val extends GameBoxScoreModel>
    implements $GameBoxScoreModelCopyWith<$Res> {
  _$GameBoxScoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameInfo = null,
  }) {
    return _then(_value.copyWith(
      gameInfo: null == gameInfo
          ? _value.gameInfo!
          : gameInfo // ignore: cast_nullable_to_non_nullable
              as Game,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res>? get gameInfo {
    if (_value.gameInfo == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.gameInfo!, (value) {
      return _then(_value.copyWith(gameInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingBoxScoreImplCopyWith<$Res>
    implements $GameBoxScoreModelCopyWith<$Res> {
  factory _$$LoadingBoxScoreImplCopyWith(_$LoadingBoxScoreImpl value,
          $Res Function(_$LoadingBoxScoreImpl) then) =
      __$$LoadingBoxScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Game? gameInfo});

  @override
  $GameCopyWith<$Res>? get gameInfo;
}

/// @nodoc
class __$$LoadingBoxScoreImplCopyWithImpl<$Res>
    extends _$GameBoxScoreModelCopyWithImpl<$Res, _$LoadingBoxScoreImpl>
    implements _$$LoadingBoxScoreImplCopyWith<$Res> {
  __$$LoadingBoxScoreImplCopyWithImpl(
      _$LoadingBoxScoreImpl _value, $Res Function(_$LoadingBoxScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameInfo = freezed,
  }) {
    return _then(_$LoadingBoxScoreImpl(
      freezed == gameInfo
          ? _value.gameInfo
          : gameInfo // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }
}

/// @nodoc

class _$LoadingBoxScoreImpl implements LoadingBoxScore {
  const _$LoadingBoxScoreImpl(this.gameInfo);

  @override
  final Game? gameInfo;

  @override
  String toString() {
    return 'GameBoxScoreModel.loading(gameInfo: $gameInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingBoxScoreImpl &&
            (identical(other.gameInfo, gameInfo) ||
                other.gameInfo == gameInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingBoxScoreImplCopyWith<_$LoadingBoxScoreImpl> get copyWith =>
      __$$LoadingBoxScoreImplCopyWithImpl<_$LoadingBoxScoreImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? gameInfo) loading,
    required TResult Function(Game gameInfo) scheduled,
    required TResult Function(
            Game gameInfo, TeamBoxScore home, TeamBoxScore away)
        hasScore,
  }) {
    return loading(gameInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Game? gameInfo)? loading,
    TResult? Function(Game gameInfo)? scheduled,
    TResult? Function(Game gameInfo, TeamBoxScore home, TeamBoxScore away)?
        hasScore,
  }) {
    return loading?.call(gameInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? gameInfo)? loading,
    TResult Function(Game gameInfo)? scheduled,
    TResult Function(Game gameInfo, TeamBoxScore home, TeamBoxScore away)?
        hasScore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(gameInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBoxScore value) loading,
    required TResult Function(ScheduledGame value) scheduled,
    required TResult Function(HasBoxScore value) hasScore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBoxScore value)? loading,
    TResult? Function(ScheduledGame value)? scheduled,
    TResult? Function(HasBoxScore value)? hasScore,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBoxScore value)? loading,
    TResult Function(ScheduledGame value)? scheduled,
    TResult Function(HasBoxScore value)? hasScore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingBoxScore implements GameBoxScoreModel {
  const factory LoadingBoxScore(final Game? gameInfo) = _$LoadingBoxScoreImpl;

  @override
  Game? get gameInfo;
  @override
  @JsonKey(ignore: true)
  _$$LoadingBoxScoreImplCopyWith<_$LoadingBoxScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduledGameImplCopyWith<$Res>
    implements $GameBoxScoreModelCopyWith<$Res> {
  factory _$$ScheduledGameImplCopyWith(
          _$ScheduledGameImpl value, $Res Function(_$ScheduledGameImpl) then) =
      __$$ScheduledGameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Game gameInfo});

  @override
  $GameCopyWith<$Res> get gameInfo;
}

/// @nodoc
class __$$ScheduledGameImplCopyWithImpl<$Res>
    extends _$GameBoxScoreModelCopyWithImpl<$Res, _$ScheduledGameImpl>
    implements _$$ScheduledGameImplCopyWith<$Res> {
  __$$ScheduledGameImplCopyWithImpl(
      _$ScheduledGameImpl _value, $Res Function(_$ScheduledGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameInfo = null,
  }) {
    return _then(_$ScheduledGameImpl(
      null == gameInfo
          ? _value.gameInfo
          : gameInfo // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get gameInfo {
    return $GameCopyWith<$Res>(_value.gameInfo, (value) {
      return _then(_value.copyWith(gameInfo: value));
    });
  }
}

/// @nodoc

class _$ScheduledGameImpl implements ScheduledGame {
  const _$ScheduledGameImpl(this.gameInfo);

  @override
  final Game gameInfo;

  @override
  String toString() {
    return 'GameBoxScoreModel.scheduled(gameInfo: $gameInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledGameImpl &&
            (identical(other.gameInfo, gameInfo) ||
                other.gameInfo == gameInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledGameImplCopyWith<_$ScheduledGameImpl> get copyWith =>
      __$$ScheduledGameImplCopyWithImpl<_$ScheduledGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? gameInfo) loading,
    required TResult Function(Game gameInfo) scheduled,
    required TResult Function(
            Game gameInfo, TeamBoxScore home, TeamBoxScore away)
        hasScore,
  }) {
    return scheduled(gameInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Game? gameInfo)? loading,
    TResult? Function(Game gameInfo)? scheduled,
    TResult? Function(Game gameInfo, TeamBoxScore home, TeamBoxScore away)?
        hasScore,
  }) {
    return scheduled?.call(gameInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? gameInfo)? loading,
    TResult Function(Game gameInfo)? scheduled,
    TResult Function(Game gameInfo, TeamBoxScore home, TeamBoxScore away)?
        hasScore,
    required TResult orElse(),
  }) {
    if (scheduled != null) {
      return scheduled(gameInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBoxScore value) loading,
    required TResult Function(ScheduledGame value) scheduled,
    required TResult Function(HasBoxScore value) hasScore,
  }) {
    return scheduled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBoxScore value)? loading,
    TResult? Function(ScheduledGame value)? scheduled,
    TResult? Function(HasBoxScore value)? hasScore,
  }) {
    return scheduled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBoxScore value)? loading,
    TResult Function(ScheduledGame value)? scheduled,
    TResult Function(HasBoxScore value)? hasScore,
    required TResult orElse(),
  }) {
    if (scheduled != null) {
      return scheduled(this);
    }
    return orElse();
  }
}

abstract class ScheduledGame implements GameBoxScoreModel {
  const factory ScheduledGame(final Game gameInfo) = _$ScheduledGameImpl;

  @override
  Game get gameInfo;
  @override
  @JsonKey(ignore: true)
  _$$ScheduledGameImplCopyWith<_$ScheduledGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HasBoxScoreImplCopyWith<$Res>
    implements $GameBoxScoreModelCopyWith<$Res> {
  factory _$$HasBoxScoreImplCopyWith(
          _$HasBoxScoreImpl value, $Res Function(_$HasBoxScoreImpl) then) =
      __$$HasBoxScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Game gameInfo, TeamBoxScore home, TeamBoxScore away});

  @override
  $GameCopyWith<$Res> get gameInfo;
  $TeamBoxScoreCopyWith<$Res> get home;
  $TeamBoxScoreCopyWith<$Res> get away;
}

/// @nodoc
class __$$HasBoxScoreImplCopyWithImpl<$Res>
    extends _$GameBoxScoreModelCopyWithImpl<$Res, _$HasBoxScoreImpl>
    implements _$$HasBoxScoreImplCopyWith<$Res> {
  __$$HasBoxScoreImplCopyWithImpl(
      _$HasBoxScoreImpl _value, $Res Function(_$HasBoxScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameInfo = null,
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_$HasBoxScoreImpl(
      null == gameInfo
          ? _value.gameInfo
          : gameInfo // ignore: cast_nullable_to_non_nullable
              as Game,
      null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as TeamBoxScore,
      null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as TeamBoxScore,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get gameInfo {
    return $GameCopyWith<$Res>(_value.gameInfo, (value) {
      return _then(_value.copyWith(gameInfo: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamBoxScoreCopyWith<$Res> get home {
    return $TeamBoxScoreCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamBoxScoreCopyWith<$Res> get away {
    return $TeamBoxScoreCopyWith<$Res>(_value.away, (value) {
      return _then(_value.copyWith(away: value));
    });
  }
}

/// @nodoc

class _$HasBoxScoreImpl implements HasBoxScore {
  const _$HasBoxScoreImpl(this.gameInfo, this.home, this.away);

  @override
  final Game gameInfo;
  @override
  final TeamBoxScore home;
  @override
  final TeamBoxScore away;

  @override
  String toString() {
    return 'GameBoxScoreModel.hasScore(gameInfo: $gameInfo, home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasBoxScoreImpl &&
            (identical(other.gameInfo, gameInfo) ||
                other.gameInfo == gameInfo) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameInfo, home, away);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasBoxScoreImplCopyWith<_$HasBoxScoreImpl> get copyWith =>
      __$$HasBoxScoreImplCopyWithImpl<_$HasBoxScoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? gameInfo) loading,
    required TResult Function(Game gameInfo) scheduled,
    required TResult Function(
            Game gameInfo, TeamBoxScore home, TeamBoxScore away)
        hasScore,
  }) {
    return hasScore(gameInfo, home, away);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Game? gameInfo)? loading,
    TResult? Function(Game gameInfo)? scheduled,
    TResult? Function(Game gameInfo, TeamBoxScore home, TeamBoxScore away)?
        hasScore,
  }) {
    return hasScore?.call(gameInfo, home, away);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? gameInfo)? loading,
    TResult Function(Game gameInfo)? scheduled,
    TResult Function(Game gameInfo, TeamBoxScore home, TeamBoxScore away)?
        hasScore,
    required TResult orElse(),
  }) {
    if (hasScore != null) {
      return hasScore(gameInfo, home, away);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBoxScore value) loading,
    required TResult Function(ScheduledGame value) scheduled,
    required TResult Function(HasBoxScore value) hasScore,
  }) {
    return hasScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBoxScore value)? loading,
    TResult? Function(ScheduledGame value)? scheduled,
    TResult? Function(HasBoxScore value)? hasScore,
  }) {
    return hasScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBoxScore value)? loading,
    TResult Function(ScheduledGame value)? scheduled,
    TResult Function(HasBoxScore value)? hasScore,
    required TResult orElse(),
  }) {
    if (hasScore != null) {
      return hasScore(this);
    }
    return orElse();
  }
}

abstract class HasBoxScore implements GameBoxScoreModel {
  const factory HasBoxScore(final Game gameInfo, final TeamBoxScore home,
      final TeamBoxScore away) = _$HasBoxScoreImpl;

  @override
  Game get gameInfo;
  TeamBoxScore get home;
  TeamBoxScore get away;
  @override
  @JsonKey(ignore: true)
  _$$HasBoxScoreImplCopyWith<_$HasBoxScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
