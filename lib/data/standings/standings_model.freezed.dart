// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamStandings _$TeamStandingsFromJson(Map<String, dynamic> json) {
  return _TeamStandings.fromJson(json);
}

/// @nodoc
mixin _$TeamStandings {
  Team get team => throw _privateConstructorUsedError;
  TeamRank get conference => throw _privateConstructorUsedError;
  TeamRank get division => throw _privateConstructorUsedError;
  WinLossRecord get overall => throw _privateConstructorUsedError;
  WinLossRecord get home => throw _privateConstructorUsedError;
  WinLossRecord get away => throw _privateConstructorUsedError;
  WinLossRecord get lastTen => throw _privateConstructorUsedError;
  int get streak => throw _privateConstructorUsedError;
  bool get isWinStreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamStandingsCopyWith<TeamStandings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStandingsCopyWith<$Res> {
  factory $TeamStandingsCopyWith(
          TeamStandings value, $Res Function(TeamStandings) then) =
      _$TeamStandingsCopyWithImpl<$Res, TeamStandings>;
  @useResult
  $Res call(
      {Team team,
      TeamRank conference,
      TeamRank division,
      WinLossRecord overall,
      WinLossRecord home,
      WinLossRecord away,
      WinLossRecord lastTen,
      int streak,
      bool isWinStreak});

  $TeamCopyWith<$Res> get team;
  $TeamRankCopyWith<$Res> get conference;
  $TeamRankCopyWith<$Res> get division;
  $WinLossRecordCopyWith<$Res> get overall;
  $WinLossRecordCopyWith<$Res> get home;
  $WinLossRecordCopyWith<$Res> get away;
  $WinLossRecordCopyWith<$Res> get lastTen;
}

/// @nodoc
class _$TeamStandingsCopyWithImpl<$Res, $Val extends TeamStandings>
    implements $TeamStandingsCopyWith<$Res> {
  _$TeamStandingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? conference = null,
    Object? division = null,
    Object? overall = null,
    Object? home = null,
    Object? away = null,
    Object? lastTen = null,
    Object? streak = null,
    Object? isWinStreak = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      conference: null == conference
          ? _value.conference
          : conference // ignore: cast_nullable_to_non_nullable
              as TeamRank,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as TeamRank,
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      lastTen: null == lastTen
          ? _value.lastTen
          : lastTen // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      isWinStreak: null == isWinStreak
          ? _value.isWinStreak
          : isWinStreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamRankCopyWith<$Res> get conference {
    return $TeamRankCopyWith<$Res>(_value.conference, (value) {
      return _then(_value.copyWith(conference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamRankCopyWith<$Res> get division {
    return $TeamRankCopyWith<$Res>(_value.division, (value) {
      return _then(_value.copyWith(division: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res> get overall {
    return $WinLossRecordCopyWith<$Res>(_value.overall, (value) {
      return _then(_value.copyWith(overall: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res> get home {
    return $WinLossRecordCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res> get away {
    return $WinLossRecordCopyWith<$Res>(_value.away, (value) {
      return _then(_value.copyWith(away: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res> get lastTen {
    return $WinLossRecordCopyWith<$Res>(_value.lastTen, (value) {
      return _then(_value.copyWith(lastTen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamStandingsImplCopyWith<$Res>
    implements $TeamStandingsCopyWith<$Res> {
  factory _$$TeamStandingsImplCopyWith(
          _$TeamStandingsImpl value, $Res Function(_$TeamStandingsImpl) then) =
      __$$TeamStandingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team team,
      TeamRank conference,
      TeamRank division,
      WinLossRecord overall,
      WinLossRecord home,
      WinLossRecord away,
      WinLossRecord lastTen,
      int streak,
      bool isWinStreak});

  @override
  $TeamCopyWith<$Res> get team;
  @override
  $TeamRankCopyWith<$Res> get conference;
  @override
  $TeamRankCopyWith<$Res> get division;
  @override
  $WinLossRecordCopyWith<$Res> get overall;
  @override
  $WinLossRecordCopyWith<$Res> get home;
  @override
  $WinLossRecordCopyWith<$Res> get away;
  @override
  $WinLossRecordCopyWith<$Res> get lastTen;
}

/// @nodoc
class __$$TeamStandingsImplCopyWithImpl<$Res>
    extends _$TeamStandingsCopyWithImpl<$Res, _$TeamStandingsImpl>
    implements _$$TeamStandingsImplCopyWith<$Res> {
  __$$TeamStandingsImplCopyWithImpl(
      _$TeamStandingsImpl _value, $Res Function(_$TeamStandingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? conference = null,
    Object? division = null,
    Object? overall = null,
    Object? home = null,
    Object? away = null,
    Object? lastTen = null,
    Object? streak = null,
    Object? isWinStreak = null,
  }) {
    return _then(_$TeamStandingsImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      conference: null == conference
          ? _value.conference
          : conference // ignore: cast_nullable_to_non_nullable
              as TeamRank,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as TeamRank,
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      lastTen: null == lastTen
          ? _value.lastTen
          : lastTen // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      isWinStreak: null == isWinStreak
          ? _value.isWinStreak
          : isWinStreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamStandingsImpl extends _TeamStandings {
  const _$TeamStandingsImpl(
      {required this.team,
      required this.conference,
      required this.division,
      required this.overall,
      required this.home,
      required this.away,
      required this.lastTen,
      required this.streak,
      required this.isWinStreak})
      : super._();

  factory _$TeamStandingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamStandingsImplFromJson(json);

  @override
  final Team team;
  @override
  final TeamRank conference;
  @override
  final TeamRank division;
  @override
  final WinLossRecord overall;
  @override
  final WinLossRecord home;
  @override
  final WinLossRecord away;
  @override
  final WinLossRecord lastTen;
  @override
  final int streak;
  @override
  final bool isWinStreak;

  @override
  String toString() {
    return 'TeamStandings(team: $team, conference: $conference, division: $division, overall: $overall, home: $home, away: $away, lastTen: $lastTen, streak: $streak, isWinStreak: $isWinStreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamStandingsImpl &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.conference, conference) ||
                other.conference == conference) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.overall, overall) || other.overall == overall) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away) &&
            (identical(other.lastTen, lastTen) || other.lastTen == lastTen) &&
            (identical(other.streak, streak) || other.streak == streak) &&
            (identical(other.isWinStreak, isWinStreak) ||
                other.isWinStreak == isWinStreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, team, conference, division,
      overall, home, away, lastTen, streak, isWinStreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamStandingsImplCopyWith<_$TeamStandingsImpl> get copyWith =>
      __$$TeamStandingsImplCopyWithImpl<_$TeamStandingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamStandingsImplToJson(
      this,
    );
  }
}

abstract class _TeamStandings extends TeamStandings {
  const factory _TeamStandings(
      {required final Team team,
      required final TeamRank conference,
      required final TeamRank division,
      required final WinLossRecord overall,
      required final WinLossRecord home,
      required final WinLossRecord away,
      required final WinLossRecord lastTen,
      required final int streak,
      required final bool isWinStreak}) = _$TeamStandingsImpl;
  const _TeamStandings._() : super._();

  factory _TeamStandings.fromJson(Map<String, dynamic> json) =
      _$TeamStandingsImpl.fromJson;

  @override
  Team get team;
  @override
  TeamRank get conference;
  @override
  TeamRank get division;
  @override
  WinLossRecord get overall;
  @override
  WinLossRecord get home;
  @override
  WinLossRecord get away;
  @override
  WinLossRecord get lastTen;
  @override
  int get streak;
  @override
  bool get isWinStreak;
  @override
  @JsonKey(ignore: true)
  _$$TeamStandingsImplCopyWith<_$TeamStandingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamRank _$TeamRankFromJson(Map<String, dynamic> json) {
  return _TeamRank.fromJson(json);
}

/// @nodoc
mixin _$TeamRank {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  String? get gamesBehind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamRankCopyWith<TeamRank> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamRankCopyWith<$Res> {
  factory $TeamRankCopyWith(TeamRank value, $Res Function(TeamRank) then) =
      _$TeamRankCopyWithImpl<$Res, TeamRank>;
  @useResult
  $Res call({int id, String name, int rank, String? gamesBehind});
}

/// @nodoc
class _$TeamRankCopyWithImpl<$Res, $Val extends TeamRank>
    implements $TeamRankCopyWith<$Res> {
  _$TeamRankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rank = null,
    Object? gamesBehind = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      gamesBehind: freezed == gamesBehind
          ? _value.gamesBehind
          : gamesBehind // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamRankImplCopyWith<$Res>
    implements $TeamRankCopyWith<$Res> {
  factory _$$TeamRankImplCopyWith(
          _$TeamRankImpl value, $Res Function(_$TeamRankImpl) then) =
      __$$TeamRankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int rank, String? gamesBehind});
}

/// @nodoc
class __$$TeamRankImplCopyWithImpl<$Res>
    extends _$TeamRankCopyWithImpl<$Res, _$TeamRankImpl>
    implements _$$TeamRankImplCopyWith<$Res> {
  __$$TeamRankImplCopyWithImpl(
      _$TeamRankImpl _value, $Res Function(_$TeamRankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rank = null,
    Object? gamesBehind = freezed,
  }) {
    return _then(_$TeamRankImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      gamesBehind: freezed == gamesBehind
          ? _value.gamesBehind
          : gamesBehind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamRankImpl implements _TeamRank {
  const _$TeamRankImpl(
      {required this.id,
      required this.name,
      required this.rank,
      required this.gamesBehind});

  factory _$TeamRankImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamRankImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int rank;
  @override
  final String? gamesBehind;

  @override
  String toString() {
    return 'TeamRank(id: $id, name: $name, rank: $rank, gamesBehind: $gamesBehind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamRankImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.gamesBehind, gamesBehind) ||
                other.gamesBehind == gamesBehind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, rank, gamesBehind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamRankImplCopyWith<_$TeamRankImpl> get copyWith =>
      __$$TeamRankImplCopyWithImpl<_$TeamRankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamRankImplToJson(
      this,
    );
  }
}

abstract class _TeamRank implements TeamRank {
  const factory _TeamRank(
      {required final int id,
      required final String name,
      required final int rank,
      required final String? gamesBehind}) = _$TeamRankImpl;

  factory _TeamRank.fromJson(Map<String, dynamic> json) =
      _$TeamRankImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get rank;
  @override
  String? get gamesBehind;
  @override
  @JsonKey(ignore: true)
  _$$TeamRankImplCopyWith<_$TeamRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WinLossRecord _$WinLossRecordFromJson(Map<String, dynamic> json) {
  return _WinLossRecord.fromJson(json);
}

/// @nodoc
mixin _$WinLossRecord {
  int get win => throw _privateConstructorUsedError;
  int get loss => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WinLossRecordCopyWith<WinLossRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinLossRecordCopyWith<$Res> {
  factory $WinLossRecordCopyWith(
          WinLossRecord value, $Res Function(WinLossRecord) then) =
      _$WinLossRecordCopyWithImpl<$Res, WinLossRecord>;
  @useResult
  $Res call({int win, int loss});
}

/// @nodoc
class _$WinLossRecordCopyWithImpl<$Res, $Val extends WinLossRecord>
    implements $WinLossRecordCopyWith<$Res> {
  _$WinLossRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? win = null,
    Object? loss = null,
  }) {
    return _then(_value.copyWith(
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
      loss: null == loss
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WinLossRecordImplCopyWith<$Res>
    implements $WinLossRecordCopyWith<$Res> {
  factory _$$WinLossRecordImplCopyWith(
          _$WinLossRecordImpl value, $Res Function(_$WinLossRecordImpl) then) =
      __$$WinLossRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int win, int loss});
}

/// @nodoc
class __$$WinLossRecordImplCopyWithImpl<$Res>
    extends _$WinLossRecordCopyWithImpl<$Res, _$WinLossRecordImpl>
    implements _$$WinLossRecordImplCopyWith<$Res> {
  __$$WinLossRecordImplCopyWithImpl(
      _$WinLossRecordImpl _value, $Res Function(_$WinLossRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? win = null,
    Object? loss = null,
  }) {
    return _then(_$WinLossRecordImpl(
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
      loss: null == loss
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WinLossRecordImpl extends _WinLossRecord {
  const _$WinLossRecordImpl({required this.win, required this.loss})
      : super._();

  factory _$WinLossRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$WinLossRecordImplFromJson(json);

  @override
  final int win;
  @override
  final int loss;

  @override
  String toString() {
    return 'WinLossRecord(win: $win, loss: $loss)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinLossRecordImpl &&
            (identical(other.win, win) || other.win == win) &&
            (identical(other.loss, loss) || other.loss == loss));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, win, loss);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WinLossRecordImplCopyWith<_$WinLossRecordImpl> get copyWith =>
      __$$WinLossRecordImplCopyWithImpl<_$WinLossRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WinLossRecordImplToJson(
      this,
    );
  }
}

abstract class _WinLossRecord extends WinLossRecord {
  const factory _WinLossRecord(
      {required final int win, required final int loss}) = _$WinLossRecordImpl;
  const _WinLossRecord._() : super._();

  factory _WinLossRecord.fromJson(Map<String, dynamic> json) =
      _$WinLossRecordImpl.fromJson;

  @override
  int get win;
  @override
  int get loss;
  @override
  @JsonKey(ignore: true)
  _$$WinLossRecordImplCopyWith<_$WinLossRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
