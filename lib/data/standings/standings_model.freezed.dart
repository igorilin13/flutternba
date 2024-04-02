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

/// @nodoc
mixin _$TeamStandings {
  int get teamId => throw _privateConstructorUsedError;
  String get teamName => throw _privateConstructorUsedError;
  String get conferenceName => throw _privateConstructorUsedError;
  TeamRank get conferenceRank => throw _privateConstructorUsedError;
  String get divisionName => throw _privateConstructorUsedError;
  TeamRank get divisionRank => throw _privateConstructorUsedError;
  WinLossRecord get overallRecord => throw _privateConstructorUsedError;
  WinLossRecord get homeRecord => throw _privateConstructorUsedError;
  WinLossRecord get awayRecord => throw _privateConstructorUsedError;
  WinLossRecord get lastTenRecord => throw _privateConstructorUsedError;
  int get streak => throw _privateConstructorUsedError;
  bool get winStreak => throw _privateConstructorUsedError;

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
      {int teamId,
      String teamName,
      String conferenceName,
      TeamRank conferenceRank,
      String divisionName,
      TeamRank divisionRank,
      WinLossRecord overallRecord,
      WinLossRecord homeRecord,
      WinLossRecord awayRecord,
      WinLossRecord lastTenRecord,
      int streak,
      bool winStreak});

  $TeamRankCopyWith<$Res> get conferenceRank;
  $TeamRankCopyWith<$Res> get divisionRank;
  $WinLossRecordCopyWith<$Res> get overallRecord;
  $WinLossRecordCopyWith<$Res> get homeRecord;
  $WinLossRecordCopyWith<$Res> get awayRecord;
  $WinLossRecordCopyWith<$Res> get lastTenRecord;
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
    Object? teamId = null,
    Object? teamName = null,
    Object? conferenceName = null,
    Object? conferenceRank = null,
    Object? divisionName = null,
    Object? divisionRank = null,
    Object? overallRecord = null,
    Object? homeRecord = null,
    Object? awayRecord = null,
    Object? lastTenRecord = null,
    Object? streak = null,
    Object? winStreak = null,
  }) {
    return _then(_value.copyWith(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      conferenceName: null == conferenceName
          ? _value.conferenceName
          : conferenceName // ignore: cast_nullable_to_non_nullable
              as String,
      conferenceRank: null == conferenceRank
          ? _value.conferenceRank
          : conferenceRank // ignore: cast_nullable_to_non_nullable
              as TeamRank,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      divisionRank: null == divisionRank
          ? _value.divisionRank
          : divisionRank // ignore: cast_nullable_to_non_nullable
              as TeamRank,
      overallRecord: null == overallRecord
          ? _value.overallRecord
          : overallRecord // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      homeRecord: null == homeRecord
          ? _value.homeRecord
          : homeRecord // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      awayRecord: null == awayRecord
          ? _value.awayRecord
          : awayRecord // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      lastTenRecord: null == lastTenRecord
          ? _value.lastTenRecord
          : lastTenRecord // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      winStreak: null == winStreak
          ? _value.winStreak
          : winStreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamRankCopyWith<$Res> get conferenceRank {
    return $TeamRankCopyWith<$Res>(_value.conferenceRank, (value) {
      return _then(_value.copyWith(conferenceRank: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamRankCopyWith<$Res> get divisionRank {
    return $TeamRankCopyWith<$Res>(_value.divisionRank, (value) {
      return _then(_value.copyWith(divisionRank: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res> get overallRecord {
    return $WinLossRecordCopyWith<$Res>(_value.overallRecord, (value) {
      return _then(_value.copyWith(overallRecord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res> get homeRecord {
    return $WinLossRecordCopyWith<$Res>(_value.homeRecord, (value) {
      return _then(_value.copyWith(homeRecord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res> get awayRecord {
    return $WinLossRecordCopyWith<$Res>(_value.awayRecord, (value) {
      return _then(_value.copyWith(awayRecord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res> get lastTenRecord {
    return $WinLossRecordCopyWith<$Res>(_value.lastTenRecord, (value) {
      return _then(_value.copyWith(lastTenRecord: value) as $Val);
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
      {int teamId,
      String teamName,
      String conferenceName,
      TeamRank conferenceRank,
      String divisionName,
      TeamRank divisionRank,
      WinLossRecord overallRecord,
      WinLossRecord homeRecord,
      WinLossRecord awayRecord,
      WinLossRecord lastTenRecord,
      int streak,
      bool winStreak});

  @override
  $TeamRankCopyWith<$Res> get conferenceRank;
  @override
  $TeamRankCopyWith<$Res> get divisionRank;
  @override
  $WinLossRecordCopyWith<$Res> get overallRecord;
  @override
  $WinLossRecordCopyWith<$Res> get homeRecord;
  @override
  $WinLossRecordCopyWith<$Res> get awayRecord;
  @override
  $WinLossRecordCopyWith<$Res> get lastTenRecord;
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
    Object? teamId = null,
    Object? teamName = null,
    Object? conferenceName = null,
    Object? conferenceRank = null,
    Object? divisionName = null,
    Object? divisionRank = null,
    Object? overallRecord = null,
    Object? homeRecord = null,
    Object? awayRecord = null,
    Object? lastTenRecord = null,
    Object? streak = null,
    Object? winStreak = null,
  }) {
    return _then(_$TeamStandingsImpl(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      conferenceName: null == conferenceName
          ? _value.conferenceName
          : conferenceName // ignore: cast_nullable_to_non_nullable
              as String,
      conferenceRank: null == conferenceRank
          ? _value.conferenceRank
          : conferenceRank // ignore: cast_nullable_to_non_nullable
              as TeamRank,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      divisionRank: null == divisionRank
          ? _value.divisionRank
          : divisionRank // ignore: cast_nullable_to_non_nullable
              as TeamRank,
      overallRecord: null == overallRecord
          ? _value.overallRecord
          : overallRecord // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      homeRecord: null == homeRecord
          ? _value.homeRecord
          : homeRecord // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      awayRecord: null == awayRecord
          ? _value.awayRecord
          : awayRecord // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      lastTenRecord: null == lastTenRecord
          ? _value.lastTenRecord
          : lastTenRecord // ignore: cast_nullable_to_non_nullable
              as WinLossRecord,
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      winStreak: null == winStreak
          ? _value.winStreak
          : winStreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TeamStandingsImpl implements _TeamStandings {
  const _$TeamStandingsImpl(
      {required this.teamId,
      required this.teamName,
      required this.conferenceName,
      required this.conferenceRank,
      required this.divisionName,
      required this.divisionRank,
      required this.overallRecord,
      required this.homeRecord,
      required this.awayRecord,
      required this.lastTenRecord,
      required this.streak,
      required this.winStreak});

  @override
  final int teamId;
  @override
  final String teamName;
  @override
  final String conferenceName;
  @override
  final TeamRank conferenceRank;
  @override
  final String divisionName;
  @override
  final TeamRank divisionRank;
  @override
  final WinLossRecord overallRecord;
  @override
  final WinLossRecord homeRecord;
  @override
  final WinLossRecord awayRecord;
  @override
  final WinLossRecord lastTenRecord;
  @override
  final int streak;
  @override
  final bool winStreak;

  @override
  String toString() {
    return 'TeamStandings(teamId: $teamId, teamName: $teamName, conferenceName: $conferenceName, conferenceRank: $conferenceRank, divisionName: $divisionName, divisionRank: $divisionRank, overallRecord: $overallRecord, homeRecord: $homeRecord, awayRecord: $awayRecord, lastTenRecord: $lastTenRecord, streak: $streak, winStreak: $winStreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamStandingsImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.conferenceName, conferenceName) ||
                other.conferenceName == conferenceName) &&
            (identical(other.conferenceRank, conferenceRank) ||
                other.conferenceRank == conferenceRank) &&
            (identical(other.divisionName, divisionName) ||
                other.divisionName == divisionName) &&
            (identical(other.divisionRank, divisionRank) ||
                other.divisionRank == divisionRank) &&
            (identical(other.overallRecord, overallRecord) ||
                other.overallRecord == overallRecord) &&
            (identical(other.homeRecord, homeRecord) ||
                other.homeRecord == homeRecord) &&
            (identical(other.awayRecord, awayRecord) ||
                other.awayRecord == awayRecord) &&
            (identical(other.lastTenRecord, lastTenRecord) ||
                other.lastTenRecord == lastTenRecord) &&
            (identical(other.streak, streak) || other.streak == streak) &&
            (identical(other.winStreak, winStreak) ||
                other.winStreak == winStreak));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      teamId,
      teamName,
      conferenceName,
      conferenceRank,
      divisionName,
      divisionRank,
      overallRecord,
      homeRecord,
      awayRecord,
      lastTenRecord,
      streak,
      winStreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamStandingsImplCopyWith<_$TeamStandingsImpl> get copyWith =>
      __$$TeamStandingsImplCopyWithImpl<_$TeamStandingsImpl>(this, _$identity);
}

abstract class _TeamStandings implements TeamStandings {
  const factory _TeamStandings(
      {required final int teamId,
      required final String teamName,
      required final String conferenceName,
      required final TeamRank conferenceRank,
      required final String divisionName,
      required final TeamRank divisionRank,
      required final WinLossRecord overallRecord,
      required final WinLossRecord homeRecord,
      required final WinLossRecord awayRecord,
      required final WinLossRecord lastTenRecord,
      required final int streak,
      required final bool winStreak}) = _$TeamStandingsImpl;

  @override
  int get teamId;
  @override
  String get teamName;
  @override
  String get conferenceName;
  @override
  TeamRank get conferenceRank;
  @override
  String get divisionName;
  @override
  TeamRank get divisionRank;
  @override
  WinLossRecord get overallRecord;
  @override
  WinLossRecord get homeRecord;
  @override
  WinLossRecord get awayRecord;
  @override
  WinLossRecord get lastTenRecord;
  @override
  int get streak;
  @override
  bool get winStreak;
  @override
  @JsonKey(ignore: true)
  _$$TeamStandingsImplCopyWith<_$TeamStandingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeamRank {
  int get rank => throw _privateConstructorUsedError;
  String? get gamesBehind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamRankCopyWith<TeamRank> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamRankCopyWith<$Res> {
  factory $TeamRankCopyWith(TeamRank value, $Res Function(TeamRank) then) =
      _$TeamRankCopyWithImpl<$Res, TeamRank>;
  @useResult
  $Res call({int rank, String? gamesBehind});
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
    Object? rank = null,
    Object? gamesBehind = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({int rank, String? gamesBehind});
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
    Object? rank = null,
    Object? gamesBehind = freezed,
  }) {
    return _then(_$TeamRankImpl(
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

class _$TeamRankImpl implements _TeamRank {
  const _$TeamRankImpl({required this.rank, required this.gamesBehind});

  @override
  final int rank;
  @override
  final String? gamesBehind;

  @override
  String toString() {
    return 'TeamRank(rank: $rank, gamesBehind: $gamesBehind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamRankImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.gamesBehind, gamesBehind) ||
                other.gamesBehind == gamesBehind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rank, gamesBehind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamRankImplCopyWith<_$TeamRankImpl> get copyWith =>
      __$$TeamRankImplCopyWithImpl<_$TeamRankImpl>(this, _$identity);
}

abstract class _TeamRank implements TeamRank {
  const factory _TeamRank(
      {required final int rank,
      required final String? gamesBehind}) = _$TeamRankImpl;

  @override
  int get rank;
  @override
  String? get gamesBehind;
  @override
  @JsonKey(ignore: true)
  _$$TeamRankImplCopyWith<_$TeamRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WinLossRecord {
  int get wins => throw _privateConstructorUsedError;
  int get losses => throw _privateConstructorUsedError;

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
  $Res call({int wins, int losses});
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
    Object? wins = null,
    Object? losses = null,
  }) {
    return _then(_value.copyWith(
      wins: null == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      losses: null == losses
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
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
  $Res call({int wins, int losses});
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
    Object? wins = null,
    Object? losses = null,
  }) {
    return _then(_$WinLossRecordImpl(
      wins: null == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      losses: null == losses
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WinLossRecordImpl extends _WinLossRecord {
  const _$WinLossRecordImpl({required this.wins, required this.losses})
      : super._();

  @override
  final int wins;
  @override
  final int losses;

  @override
  String toString() {
    return 'WinLossRecord(wins: $wins, losses: $losses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinLossRecordImpl &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.losses, losses) || other.losses == losses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wins, losses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WinLossRecordImplCopyWith<_$WinLossRecordImpl> get copyWith =>
      __$$WinLossRecordImplCopyWithImpl<_$WinLossRecordImpl>(this, _$identity);
}

abstract class _WinLossRecord extends WinLossRecord {
  const factory _WinLossRecord(
      {required final int wins,
      required final int losses}) = _$WinLossRecordImpl;
  const _WinLossRecord._() : super._();

  @override
  int get wins;
  @override
  int get losses;
  @override
  @JsonKey(ignore: true)
  _$$WinLossRecordImplCopyWith<_$WinLossRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
