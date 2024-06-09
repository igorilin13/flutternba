// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Game {
  int get id => throw _privateConstructorUsedError;
  DateTime get leagueDate => throw _privateConstructorUsedError;
  DateTime? get scheduledDateTime => throw _privateConstructorUsedError;
  Team get homeTeam => throw _privateConstructorUsedError;
  int get homeTeamScore => throw _privateConstructorUsedError;
  bool get postseason => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int get visitorTeamScore => throw _privateConstructorUsedError;
  Team get visitorTeam => throw _privateConstructorUsedError;
  GameStatus get gameStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {int id,
      DateTime leagueDate,
      DateTime? scheduledDateTime,
      Team homeTeam,
      int homeTeamScore,
      bool postseason,
      String? time,
      int visitorTeamScore,
      Team visitorTeam,
      GameStatus gameStatus});

  $TeamCopyWith<$Res> get homeTeam;
  $TeamCopyWith<$Res> get visitorTeam;
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? leagueDate = null,
    Object? scheduledDateTime = freezed,
    Object? homeTeam = null,
    Object? homeTeamScore = null,
    Object? postseason = null,
    Object? time = freezed,
    Object? visitorTeamScore = null,
    Object? visitorTeam = null,
    Object? gameStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      leagueDate: null == leagueDate
          ? _value.leagueDate
          : leagueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledDateTime: freezed == scheduledDateTime
          ? _value.scheduledDateTime
          : scheduledDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      homeTeamScore: null == homeTeamScore
          ? _value.homeTeamScore
          : homeTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      postseason: null == postseason
          ? _value.postseason
          : postseason // ignore: cast_nullable_to_non_nullable
              as bool,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      visitorTeamScore: null == visitorTeamScore
          ? _value.visitorTeamScore
          : visitorTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      visitorTeam: null == visitorTeam
          ? _value.visitorTeam
          : visitorTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      gameStatus: null == gameStatus
          ? _value.gameStatus
          : gameStatus // ignore: cast_nullable_to_non_nullable
              as GameStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get homeTeam {
    return $TeamCopyWith<$Res>(_value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get visitorTeam {
    return $TeamCopyWith<$Res>(_value.visitorTeam, (value) {
      return _then(_value.copyWith(visitorTeam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime leagueDate,
      DateTime? scheduledDateTime,
      Team homeTeam,
      int homeTeamScore,
      bool postseason,
      String? time,
      int visitorTeamScore,
      Team visitorTeam,
      GameStatus gameStatus});

  @override
  $TeamCopyWith<$Res> get homeTeam;
  @override
  $TeamCopyWith<$Res> get visitorTeam;
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? leagueDate = null,
    Object? scheduledDateTime = freezed,
    Object? homeTeam = null,
    Object? homeTeamScore = null,
    Object? postseason = null,
    Object? time = freezed,
    Object? visitorTeamScore = null,
    Object? visitorTeam = null,
    Object? gameStatus = null,
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      leagueDate: null == leagueDate
          ? _value.leagueDate
          : leagueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledDateTime: freezed == scheduledDateTime
          ? _value.scheduledDateTime
          : scheduledDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      homeTeamScore: null == homeTeamScore
          ? _value.homeTeamScore
          : homeTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      postseason: null == postseason
          ? _value.postseason
          : postseason // ignore: cast_nullable_to_non_nullable
              as bool,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      visitorTeamScore: null == visitorTeamScore
          ? _value.visitorTeamScore
          : visitorTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      visitorTeam: null == visitorTeam
          ? _value.visitorTeam
          : visitorTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      gameStatus: null == gameStatus
          ? _value.gameStatus
          : gameStatus // ignore: cast_nullable_to_non_nullable
              as GameStatus,
    ));
  }
}

/// @nodoc

class _$GameImpl extends _Game {
  const _$GameImpl(
      {required this.id,
      required this.leagueDate,
      required this.scheduledDateTime,
      required this.homeTeam,
      required this.homeTeamScore,
      required this.postseason,
      required this.time,
      required this.visitorTeamScore,
      required this.visitorTeam,
      required this.gameStatus})
      : super._();

  @override
  final int id;
  @override
  final DateTime leagueDate;
  @override
  final DateTime? scheduledDateTime;
  @override
  final Team homeTeam;
  @override
  final int homeTeamScore;
  @override
  final bool postseason;
  @override
  final String? time;
  @override
  final int visitorTeamScore;
  @override
  final Team visitorTeam;
  @override
  final GameStatus gameStatus;

  @override
  String toString() {
    return 'Game(id: $id, leagueDate: $leagueDate, scheduledDateTime: $scheduledDateTime, homeTeam: $homeTeam, homeTeamScore: $homeTeamScore, postseason: $postseason, time: $time, visitorTeamScore: $visitorTeamScore, visitorTeam: $visitorTeam, gameStatus: $gameStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.leagueDate, leagueDate) ||
                other.leagueDate == leagueDate) &&
            (identical(other.scheduledDateTime, scheduledDateTime) ||
                other.scheduledDateTime == scheduledDateTime) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.homeTeamScore, homeTeamScore) ||
                other.homeTeamScore == homeTeamScore) &&
            (identical(other.postseason, postseason) ||
                other.postseason == postseason) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.visitorTeamScore, visitorTeamScore) ||
                other.visitorTeamScore == visitorTeamScore) &&
            (identical(other.visitorTeam, visitorTeam) ||
                other.visitorTeam == visitorTeam) &&
            (identical(other.gameStatus, gameStatus) ||
                other.gameStatus == gameStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      leagueDate,
      scheduledDateTime,
      homeTeam,
      homeTeamScore,
      postseason,
      time,
      visitorTeamScore,
      visitorTeam,
      gameStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);
}

abstract class _Game extends Game {
  const factory _Game(
      {required final int id,
      required final DateTime leagueDate,
      required final DateTime? scheduledDateTime,
      required final Team homeTeam,
      required final int homeTeamScore,
      required final bool postseason,
      required final String? time,
      required final int visitorTeamScore,
      required final Team visitorTeam,
      required final GameStatus gameStatus}) = _$GameImpl;
  const _Game._() : super._();

  @override
  int get id;
  @override
  DateTime get leagueDate;
  @override
  DateTime? get scheduledDateTime;
  @override
  Team get homeTeam;
  @override
  int get homeTeamScore;
  @override
  bool get postseason;
  @override
  String? get time;
  @override
  int get visitorTeamScore;
  @override
  Team get visitorTeam;
  @override
  GameStatus get gameStatus;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
