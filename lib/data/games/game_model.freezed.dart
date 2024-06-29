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

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  int get id => throw _privateConstructorUsedError;
  DateTime get leagueDate => throw _privateConstructorUsedError;
  DateTime? get scheduled => throw _privateConstructorUsedError;
  Team get homeTeam => throw _privateConstructorUsedError;
  int get homeTeamScore => throw _privateConstructorUsedError;
  bool get postseason => throw _privateConstructorUsedError;
  String? get inGameTime => throw _privateConstructorUsedError;
  int get visitorTeamScore => throw _privateConstructorUsedError;
  Team get visitorTeam => throw _privateConstructorUsedError;
  GameStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      DateTime? scheduled,
      Team homeTeam,
      int homeTeamScore,
      bool postseason,
      String? inGameTime,
      int visitorTeamScore,
      Team visitorTeam,
      GameStatus status});

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
    Object? scheduled = freezed,
    Object? homeTeam = null,
    Object? homeTeamScore = null,
    Object? postseason = null,
    Object? inGameTime = freezed,
    Object? visitorTeamScore = null,
    Object? visitorTeam = null,
    Object? status = null,
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
      scheduled: freezed == scheduled
          ? _value.scheduled
          : scheduled // ignore: cast_nullable_to_non_nullable
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
      inGameTime: freezed == inGameTime
          ? _value.inGameTime
          : inGameTime // ignore: cast_nullable_to_non_nullable
              as String?,
      visitorTeamScore: null == visitorTeamScore
          ? _value.visitorTeamScore
          : visitorTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      visitorTeam: null == visitorTeam
          ? _value.visitorTeam
          : visitorTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      DateTime? scheduled,
      Team homeTeam,
      int homeTeamScore,
      bool postseason,
      String? inGameTime,
      int visitorTeamScore,
      Team visitorTeam,
      GameStatus status});

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
    Object? scheduled = freezed,
    Object? homeTeam = null,
    Object? homeTeamScore = null,
    Object? postseason = null,
    Object? inGameTime = freezed,
    Object? visitorTeamScore = null,
    Object? visitorTeam = null,
    Object? status = null,
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
      scheduled: freezed == scheduled
          ? _value.scheduled
          : scheduled // ignore: cast_nullable_to_non_nullable
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
      inGameTime: freezed == inGameTime
          ? _value.inGameTime
          : inGameTime // ignore: cast_nullable_to_non_nullable
              as String?,
      visitorTeamScore: null == visitorTeamScore
          ? _value.visitorTeamScore
          : visitorTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      visitorTeam: null == visitorTeam
          ? _value.visitorTeam
          : visitorTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl extends _Game {
  const _$GameImpl(
      {required this.id,
      required this.leagueDate,
      required this.scheduled,
      required this.homeTeam,
      required this.homeTeamScore,
      required this.postseason,
      required this.inGameTime,
      required this.visitorTeamScore,
      required this.visitorTeam,
      required this.status})
      : super._();

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime leagueDate;
  @override
  final DateTime? scheduled;
  @override
  final Team homeTeam;
  @override
  final int homeTeamScore;
  @override
  final bool postseason;
  @override
  final String? inGameTime;
  @override
  final int visitorTeamScore;
  @override
  final Team visitorTeam;
  @override
  final GameStatus status;

  @override
  String toString() {
    return 'Game(id: $id, leagueDate: $leagueDate, scheduled: $scheduled, homeTeam: $homeTeam, homeTeamScore: $homeTeamScore, postseason: $postseason, inGameTime: $inGameTime, visitorTeamScore: $visitorTeamScore, visitorTeam: $visitorTeam, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.leagueDate, leagueDate) ||
                other.leagueDate == leagueDate) &&
            (identical(other.scheduled, scheduled) ||
                other.scheduled == scheduled) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.homeTeamScore, homeTeamScore) ||
                other.homeTeamScore == homeTeamScore) &&
            (identical(other.postseason, postseason) ||
                other.postseason == postseason) &&
            (identical(other.inGameTime, inGameTime) ||
                other.inGameTime == inGameTime) &&
            (identical(other.visitorTeamScore, visitorTeamScore) ||
                other.visitorTeamScore == visitorTeamScore) &&
            (identical(other.visitorTeam, visitorTeam) ||
                other.visitorTeam == visitorTeam) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      leagueDate,
      scheduled,
      homeTeam,
      homeTeamScore,
      postseason,
      inGameTime,
      visitorTeamScore,
      visitorTeam,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game extends Game {
  const factory _Game(
      {required final int id,
      required final DateTime leagueDate,
      required final DateTime? scheduled,
      required final Team homeTeam,
      required final int homeTeamScore,
      required final bool postseason,
      required final String? inGameTime,
      required final int visitorTeamScore,
      required final Team visitorTeam,
      required final GameStatus status}) = _$GameImpl;
  const _Game._() : super._();

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get leagueDate;
  @override
  DateTime? get scheduled;
  @override
  Team get homeTeam;
  @override
  int get homeTeamScore;
  @override
  bool get postseason;
  @override
  String? get inGameTime;
  @override
  int get visitorTeamScore;
  @override
  Team get visitorTeam;
  @override
  GameStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
