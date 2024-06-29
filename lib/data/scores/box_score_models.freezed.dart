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

GameBoxScore _$GameBoxScoreFromJson(Map<String, dynamic> json) {
  return _GameBoxScore.fromJson(json);
}

/// @nodoc
mixin _$GameBoxScore {
  Game get game => throw _privateConstructorUsedError;
  TeamBoxScore? get home => throw _privateConstructorUsedError;
  TeamBoxScore? get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameBoxScoreCopyWith<GameBoxScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameBoxScoreCopyWith<$Res> {
  factory $GameBoxScoreCopyWith(
          GameBoxScore value, $Res Function(GameBoxScore) then) =
      _$GameBoxScoreCopyWithImpl<$Res, GameBoxScore>;
  @useResult
  $Res call({Game game, TeamBoxScore? home, TeamBoxScore? away});

  $GameCopyWith<$Res> get game;
  $TeamBoxScoreCopyWith<$Res>? get home;
  $TeamBoxScoreCopyWith<$Res>? get away;
}

/// @nodoc
class _$GameBoxScoreCopyWithImpl<$Res, $Val extends GameBoxScore>
    implements $GameBoxScoreCopyWith<$Res> {
  _$GameBoxScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_value.copyWith(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as TeamBoxScore?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as TeamBoxScore?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamBoxScoreCopyWith<$Res>? get home {
    if (_value.home == null) {
      return null;
    }

    return $TeamBoxScoreCopyWith<$Res>(_value.home!, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamBoxScoreCopyWith<$Res>? get away {
    if (_value.away == null) {
      return null;
    }

    return $TeamBoxScoreCopyWith<$Res>(_value.away!, (value) {
      return _then(_value.copyWith(away: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameBoxScoreImplCopyWith<$Res>
    implements $GameBoxScoreCopyWith<$Res> {
  factory _$$GameBoxScoreImplCopyWith(
          _$GameBoxScoreImpl value, $Res Function(_$GameBoxScoreImpl) then) =
      __$$GameBoxScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Game game, TeamBoxScore? home, TeamBoxScore? away});

  @override
  $GameCopyWith<$Res> get game;
  @override
  $TeamBoxScoreCopyWith<$Res>? get home;
  @override
  $TeamBoxScoreCopyWith<$Res>? get away;
}

/// @nodoc
class __$$GameBoxScoreImplCopyWithImpl<$Res>
    extends _$GameBoxScoreCopyWithImpl<$Res, _$GameBoxScoreImpl>
    implements _$$GameBoxScoreImplCopyWith<$Res> {
  __$$GameBoxScoreImplCopyWithImpl(
      _$GameBoxScoreImpl _value, $Res Function(_$GameBoxScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_$GameBoxScoreImpl(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as TeamBoxScore?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as TeamBoxScore?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameBoxScoreImpl implements _GameBoxScore {
  _$GameBoxScoreImpl(
      {required this.game, required this.home, required this.away});

  factory _$GameBoxScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameBoxScoreImplFromJson(json);

  @override
  final Game game;
  @override
  final TeamBoxScore? home;
  @override
  final TeamBoxScore? away;

  @override
  String toString() {
    return 'GameBoxScore(game: $game, home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameBoxScoreImpl &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, game, home, away);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameBoxScoreImplCopyWith<_$GameBoxScoreImpl> get copyWith =>
      __$$GameBoxScoreImplCopyWithImpl<_$GameBoxScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameBoxScoreImplToJson(
      this,
    );
  }
}

abstract class _GameBoxScore implements GameBoxScore {
  factory _GameBoxScore(
      {required final Game game,
      required final TeamBoxScore? home,
      required final TeamBoxScore? away}) = _$GameBoxScoreImpl;

  factory _GameBoxScore.fromJson(Map<String, dynamic> json) =
      _$GameBoxScoreImpl.fromJson;

  @override
  Game get game;
  @override
  TeamBoxScore? get home;
  @override
  TeamBoxScore? get away;
  @override
  @JsonKey(ignore: true)
  _$$GameBoxScoreImplCopyWith<_$GameBoxScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamBoxScore _$TeamBoxScoreFromJson(Map<String, dynamic> json) {
  return _TeamBoxScore.fromJson(json);
}

/// @nodoc
mixin _$TeamBoxScore {
  TeamStats get team => throw _privateConstructorUsedError;
  WinLossRecord? get record => throw _privateConstructorUsedError;
  List<PlayerStats> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamBoxScoreCopyWith<TeamBoxScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamBoxScoreCopyWith<$Res> {
  factory $TeamBoxScoreCopyWith(
          TeamBoxScore value, $Res Function(TeamBoxScore) then) =
      _$TeamBoxScoreCopyWithImpl<$Res, TeamBoxScore>;
  @useResult
  $Res call({TeamStats team, WinLossRecord? record, List<PlayerStats> players});

  $TeamStatsCopyWith<$Res> get team;
  $WinLossRecordCopyWith<$Res>? get record;
}

/// @nodoc
class _$TeamBoxScoreCopyWithImpl<$Res, $Val extends TeamBoxScore>
    implements $TeamBoxScoreCopyWith<$Res> {
  _$TeamBoxScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? record = freezed,
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TeamStats,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as WinLossRecord?,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerStats>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamStatsCopyWith<$Res> get team {
    return $TeamStatsCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WinLossRecordCopyWith<$Res>? get record {
    if (_value.record == null) {
      return null;
    }

    return $WinLossRecordCopyWith<$Res>(_value.record!, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamBoxScoreImplCopyWith<$Res>
    implements $TeamBoxScoreCopyWith<$Res> {
  factory _$$TeamBoxScoreImplCopyWith(
          _$TeamBoxScoreImpl value, $Res Function(_$TeamBoxScoreImpl) then) =
      __$$TeamBoxScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeamStats team, WinLossRecord? record, List<PlayerStats> players});

  @override
  $TeamStatsCopyWith<$Res> get team;
  @override
  $WinLossRecordCopyWith<$Res>? get record;
}

/// @nodoc
class __$$TeamBoxScoreImplCopyWithImpl<$Res>
    extends _$TeamBoxScoreCopyWithImpl<$Res, _$TeamBoxScoreImpl>
    implements _$$TeamBoxScoreImplCopyWith<$Res> {
  __$$TeamBoxScoreImplCopyWithImpl(
      _$TeamBoxScoreImpl _value, $Res Function(_$TeamBoxScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? record = freezed,
    Object? players = null,
  }) {
    return _then(_$TeamBoxScoreImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TeamStats,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as WinLossRecord?,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerStats>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamBoxScoreImpl implements _TeamBoxScore {
  _$TeamBoxScoreImpl(
      {required this.team,
      required this.record,
      required final List<PlayerStats> players})
      : _players = players;

  factory _$TeamBoxScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamBoxScoreImplFromJson(json);

  @override
  final TeamStats team;
  @override
  final WinLossRecord? record;
  final List<PlayerStats> _players;
  @override
  List<PlayerStats> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'TeamBoxScore(team: $team, record: $record, players: $players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamBoxScoreImpl &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.record, record) || other.record == record) &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, team, record, const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamBoxScoreImplCopyWith<_$TeamBoxScoreImpl> get copyWith =>
      __$$TeamBoxScoreImplCopyWithImpl<_$TeamBoxScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamBoxScoreImplToJson(
      this,
    );
  }
}

abstract class _TeamBoxScore implements TeamBoxScore {
  factory _TeamBoxScore(
      {required final TeamStats team,
      required final WinLossRecord? record,
      required final List<PlayerStats> players}) = _$TeamBoxScoreImpl;

  factory _TeamBoxScore.fromJson(Map<String, dynamic> json) =
      _$TeamBoxScoreImpl.fromJson;

  @override
  TeamStats get team;
  @override
  WinLossRecord? get record;
  @override
  List<PlayerStats> get players;
  @override
  @JsonKey(ignore: true)
  _$$TeamBoxScoreImplCopyWith<_$TeamBoxScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamStats _$TeamStatsFromJson(Map<String, dynamic> json) {
  return _TeamStats.fromJson(json);
}

/// @nodoc
mixin _$TeamStats {
  int get id => throw _privateConstructorUsedError;
  int get fgm => throw _privateConstructorUsedError;
  int get fga => throw _privateConstructorUsedError;
  int get fg3pm => throw _privateConstructorUsedError;
  int get fg3pa => throw _privateConstructorUsedError;
  int get ftm => throw _privateConstructorUsedError;
  int get fta => throw _privateConstructorUsedError;
  int get reb => throw _privateConstructorUsedError;
  int get oreb => throw _privateConstructorUsedError;
  int get dreb => throw _privateConstructorUsedError;
  int get blk => throw _privateConstructorUsedError;
  int get stl => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamStatsCopyWith<TeamStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStatsCopyWith<$Res> {
  factory $TeamStatsCopyWith(TeamStats value, $Res Function(TeamStats) then) =
      _$TeamStatsCopyWithImpl<$Res, TeamStats>;
  @useResult
  $Res call(
      {int id,
      int fgm,
      int fga,
      int fg3pm,
      int fg3pa,
      int ftm,
      int fta,
      int reb,
      int oreb,
      int dreb,
      int blk,
      int stl,
      int to});
}

/// @nodoc
class _$TeamStatsCopyWithImpl<$Res, $Val extends TeamStats>
    implements $TeamStatsCopyWith<$Res> {
  _$TeamStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fgm = null,
    Object? fga = null,
    Object? fg3pm = null,
    Object? fg3pa = null,
    Object? ftm = null,
    Object? fta = null,
    Object? reb = null,
    Object? oreb = null,
    Object? dreb = null,
    Object? blk = null,
    Object? stl = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fgm: null == fgm
          ? _value.fgm
          : fgm // ignore: cast_nullable_to_non_nullable
              as int,
      fga: null == fga
          ? _value.fga
          : fga // ignore: cast_nullable_to_non_nullable
              as int,
      fg3pm: null == fg3pm
          ? _value.fg3pm
          : fg3pm // ignore: cast_nullable_to_non_nullable
              as int,
      fg3pa: null == fg3pa
          ? _value.fg3pa
          : fg3pa // ignore: cast_nullable_to_non_nullable
              as int,
      ftm: null == ftm
          ? _value.ftm
          : ftm // ignore: cast_nullable_to_non_nullable
              as int,
      fta: null == fta
          ? _value.fta
          : fta // ignore: cast_nullable_to_non_nullable
              as int,
      reb: null == reb
          ? _value.reb
          : reb // ignore: cast_nullable_to_non_nullable
              as int,
      oreb: null == oreb
          ? _value.oreb
          : oreb // ignore: cast_nullable_to_non_nullable
              as int,
      dreb: null == dreb
          ? _value.dreb
          : dreb // ignore: cast_nullable_to_non_nullable
              as int,
      blk: null == blk
          ? _value.blk
          : blk // ignore: cast_nullable_to_non_nullable
              as int,
      stl: null == stl
          ? _value.stl
          : stl // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamStatsImplCopyWith<$Res>
    implements $TeamStatsCopyWith<$Res> {
  factory _$$TeamStatsImplCopyWith(
          _$TeamStatsImpl value, $Res Function(_$TeamStatsImpl) then) =
      __$$TeamStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int fgm,
      int fga,
      int fg3pm,
      int fg3pa,
      int ftm,
      int fta,
      int reb,
      int oreb,
      int dreb,
      int blk,
      int stl,
      int to});
}

/// @nodoc
class __$$TeamStatsImplCopyWithImpl<$Res>
    extends _$TeamStatsCopyWithImpl<$Res, _$TeamStatsImpl>
    implements _$$TeamStatsImplCopyWith<$Res> {
  __$$TeamStatsImplCopyWithImpl(
      _$TeamStatsImpl _value, $Res Function(_$TeamStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fgm = null,
    Object? fga = null,
    Object? fg3pm = null,
    Object? fg3pa = null,
    Object? ftm = null,
    Object? fta = null,
    Object? reb = null,
    Object? oreb = null,
    Object? dreb = null,
    Object? blk = null,
    Object? stl = null,
    Object? to = null,
  }) {
    return _then(_$TeamStatsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fgm: null == fgm
          ? _value.fgm
          : fgm // ignore: cast_nullable_to_non_nullable
              as int,
      fga: null == fga
          ? _value.fga
          : fga // ignore: cast_nullable_to_non_nullable
              as int,
      fg3pm: null == fg3pm
          ? _value.fg3pm
          : fg3pm // ignore: cast_nullable_to_non_nullable
              as int,
      fg3pa: null == fg3pa
          ? _value.fg3pa
          : fg3pa // ignore: cast_nullable_to_non_nullable
              as int,
      ftm: null == ftm
          ? _value.ftm
          : ftm // ignore: cast_nullable_to_non_nullable
              as int,
      fta: null == fta
          ? _value.fta
          : fta // ignore: cast_nullable_to_non_nullable
              as int,
      reb: null == reb
          ? _value.reb
          : reb // ignore: cast_nullable_to_non_nullable
              as int,
      oreb: null == oreb
          ? _value.oreb
          : oreb // ignore: cast_nullable_to_non_nullable
              as int,
      dreb: null == dreb
          ? _value.dreb
          : dreb // ignore: cast_nullable_to_non_nullable
              as int,
      blk: null == blk
          ? _value.blk
          : blk // ignore: cast_nullable_to_non_nullable
              as int,
      stl: null == stl
          ? _value.stl
          : stl // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamStatsImpl extends _TeamStats {
  _$TeamStatsImpl(
      {required this.id,
      required this.fgm,
      required this.fga,
      required this.fg3pm,
      required this.fg3pa,
      required this.ftm,
      required this.fta,
      required this.reb,
      required this.oreb,
      required this.dreb,
      required this.blk,
      required this.stl,
      required this.to})
      : super._();

  factory _$TeamStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamStatsImplFromJson(json);

  @override
  final int id;
  @override
  final int fgm;
  @override
  final int fga;
  @override
  final int fg3pm;
  @override
  final int fg3pa;
  @override
  final int ftm;
  @override
  final int fta;
  @override
  final int reb;
  @override
  final int oreb;
  @override
  final int dreb;
  @override
  final int blk;
  @override
  final int stl;
  @override
  final int to;

  @override
  String toString() {
    return 'TeamStats(id: $id, fgm: $fgm, fga: $fga, fg3pm: $fg3pm, fg3pa: $fg3pa, ftm: $ftm, fta: $fta, reb: $reb, oreb: $oreb, dreb: $dreb, blk: $blk, stl: $stl, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamStatsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fgm, fgm) || other.fgm == fgm) &&
            (identical(other.fga, fga) || other.fga == fga) &&
            (identical(other.fg3pm, fg3pm) || other.fg3pm == fg3pm) &&
            (identical(other.fg3pa, fg3pa) || other.fg3pa == fg3pa) &&
            (identical(other.ftm, ftm) || other.ftm == ftm) &&
            (identical(other.fta, fta) || other.fta == fta) &&
            (identical(other.reb, reb) || other.reb == reb) &&
            (identical(other.oreb, oreb) || other.oreb == oreb) &&
            (identical(other.dreb, dreb) || other.dreb == dreb) &&
            (identical(other.blk, blk) || other.blk == blk) &&
            (identical(other.stl, stl) || other.stl == stl) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fgm, fga, fg3pm, fg3pa, ftm,
      fta, reb, oreb, dreb, blk, stl, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamStatsImplCopyWith<_$TeamStatsImpl> get copyWith =>
      __$$TeamStatsImplCopyWithImpl<_$TeamStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamStatsImplToJson(
      this,
    );
  }
}

abstract class _TeamStats extends TeamStats {
  factory _TeamStats(
      {required final int id,
      required final int fgm,
      required final int fga,
      required final int fg3pm,
      required final int fg3pa,
      required final int ftm,
      required final int fta,
      required final int reb,
      required final int oreb,
      required final int dreb,
      required final int blk,
      required final int stl,
      required final int to}) = _$TeamStatsImpl;
  _TeamStats._() : super._();

  factory _TeamStats.fromJson(Map<String, dynamic> json) =
      _$TeamStatsImpl.fromJson;

  @override
  int get id;
  @override
  int get fgm;
  @override
  int get fga;
  @override
  int get fg3pm;
  @override
  int get fg3pa;
  @override
  int get ftm;
  @override
  int get fta;
  @override
  int get reb;
  @override
  int get oreb;
  @override
  int get dreb;
  @override
  int get blk;
  @override
  int get stl;
  @override
  int get to;
  @override
  @JsonKey(ignore: true)
  _$$TeamStatsImplCopyWith<_$TeamStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerStats _$PlayerStatsFromJson(Map<String, dynamic> json) {
  return _PlayerStats.fromJson(json);
}

/// @nodoc
mixin _$PlayerStats {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get startPosition => throw _privateConstructorUsedError;
  String get jersey => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  int get pts => throw _privateConstructorUsedError;
  int get fgm => throw _privateConstructorUsedError;
  int get fga => throw _privateConstructorUsedError;
  int get fg3pm => throw _privateConstructorUsedError;
  int get fg3pa => throw _privateConstructorUsedError;
  int get ftm => throw _privateConstructorUsedError;
  int get fta => throw _privateConstructorUsedError;
  int get reb => throw _privateConstructorUsedError;
  int get oreb => throw _privateConstructorUsedError;
  int get dreb => throw _privateConstructorUsedError;
  int get blk => throw _privateConstructorUsedError;
  int get stl => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerStatsCopyWith<PlayerStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStatsCopyWith<$Res> {
  factory $PlayerStatsCopyWith(
          PlayerStats value, $Res Function(PlayerStats) then) =
      _$PlayerStatsCopyWithImpl<$Res, PlayerStats>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String? startPosition,
      String jersey,
      int min,
      int pts,
      int fgm,
      int fga,
      int fg3pm,
      int fg3pa,
      int ftm,
      int fta,
      int reb,
      int oreb,
      int dreb,
      int blk,
      int stl,
      int to});
}

/// @nodoc
class _$PlayerStatsCopyWithImpl<$Res, $Val extends PlayerStats>
    implements $PlayerStatsCopyWith<$Res> {
  _$PlayerStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? startPosition = freezed,
    Object? jersey = null,
    Object? min = null,
    Object? pts = null,
    Object? fgm = null,
    Object? fga = null,
    Object? fg3pm = null,
    Object? fg3pa = null,
    Object? ftm = null,
    Object? fta = null,
    Object? reb = null,
    Object? oreb = null,
    Object? dreb = null,
    Object? blk = null,
    Object? stl = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      startPosition: freezed == startPosition
          ? _value.startPosition
          : startPosition // ignore: cast_nullable_to_non_nullable
              as String?,
      jersey: null == jersey
          ? _value.jersey
          : jersey // ignore: cast_nullable_to_non_nullable
              as String,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      pts: null == pts
          ? _value.pts
          : pts // ignore: cast_nullable_to_non_nullable
              as int,
      fgm: null == fgm
          ? _value.fgm
          : fgm // ignore: cast_nullable_to_non_nullable
              as int,
      fga: null == fga
          ? _value.fga
          : fga // ignore: cast_nullable_to_non_nullable
              as int,
      fg3pm: null == fg3pm
          ? _value.fg3pm
          : fg3pm // ignore: cast_nullable_to_non_nullable
              as int,
      fg3pa: null == fg3pa
          ? _value.fg3pa
          : fg3pa // ignore: cast_nullable_to_non_nullable
              as int,
      ftm: null == ftm
          ? _value.ftm
          : ftm // ignore: cast_nullable_to_non_nullable
              as int,
      fta: null == fta
          ? _value.fta
          : fta // ignore: cast_nullable_to_non_nullable
              as int,
      reb: null == reb
          ? _value.reb
          : reb // ignore: cast_nullable_to_non_nullable
              as int,
      oreb: null == oreb
          ? _value.oreb
          : oreb // ignore: cast_nullable_to_non_nullable
              as int,
      dreb: null == dreb
          ? _value.dreb
          : dreb // ignore: cast_nullable_to_non_nullable
              as int,
      blk: null == blk
          ? _value.blk
          : blk // ignore: cast_nullable_to_non_nullable
              as int,
      stl: null == stl
          ? _value.stl
          : stl // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerStatsImplCopyWith<$Res>
    implements $PlayerStatsCopyWith<$Res> {
  factory _$$PlayerStatsImplCopyWith(
          _$PlayerStatsImpl value, $Res Function(_$PlayerStatsImpl) then) =
      __$$PlayerStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String? startPosition,
      String jersey,
      int min,
      int pts,
      int fgm,
      int fga,
      int fg3pm,
      int fg3pa,
      int ftm,
      int fta,
      int reb,
      int oreb,
      int dreb,
      int blk,
      int stl,
      int to});
}

/// @nodoc
class __$$PlayerStatsImplCopyWithImpl<$Res>
    extends _$PlayerStatsCopyWithImpl<$Res, _$PlayerStatsImpl>
    implements _$$PlayerStatsImplCopyWith<$Res> {
  __$$PlayerStatsImplCopyWithImpl(
      _$PlayerStatsImpl _value, $Res Function(_$PlayerStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? startPosition = freezed,
    Object? jersey = null,
    Object? min = null,
    Object? pts = null,
    Object? fgm = null,
    Object? fga = null,
    Object? fg3pm = null,
    Object? fg3pa = null,
    Object? ftm = null,
    Object? fta = null,
    Object? reb = null,
    Object? oreb = null,
    Object? dreb = null,
    Object? blk = null,
    Object? stl = null,
    Object? to = null,
  }) {
    return _then(_$PlayerStatsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      startPosition: freezed == startPosition
          ? _value.startPosition
          : startPosition // ignore: cast_nullable_to_non_nullable
              as String?,
      jersey: null == jersey
          ? _value.jersey
          : jersey // ignore: cast_nullable_to_non_nullable
              as String,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      pts: null == pts
          ? _value.pts
          : pts // ignore: cast_nullable_to_non_nullable
              as int,
      fgm: null == fgm
          ? _value.fgm
          : fgm // ignore: cast_nullable_to_non_nullable
              as int,
      fga: null == fga
          ? _value.fga
          : fga // ignore: cast_nullable_to_non_nullable
              as int,
      fg3pm: null == fg3pm
          ? _value.fg3pm
          : fg3pm // ignore: cast_nullable_to_non_nullable
              as int,
      fg3pa: null == fg3pa
          ? _value.fg3pa
          : fg3pa // ignore: cast_nullable_to_non_nullable
              as int,
      ftm: null == ftm
          ? _value.ftm
          : ftm // ignore: cast_nullable_to_non_nullable
              as int,
      fta: null == fta
          ? _value.fta
          : fta // ignore: cast_nullable_to_non_nullable
              as int,
      reb: null == reb
          ? _value.reb
          : reb // ignore: cast_nullable_to_non_nullable
              as int,
      oreb: null == oreb
          ? _value.oreb
          : oreb // ignore: cast_nullable_to_non_nullable
              as int,
      dreb: null == dreb
          ? _value.dreb
          : dreb // ignore: cast_nullable_to_non_nullable
              as int,
      blk: null == blk
          ? _value.blk
          : blk // ignore: cast_nullable_to_non_nullable
              as int,
      stl: null == stl
          ? _value.stl
          : stl // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerStatsImpl implements _PlayerStats {
  _$PlayerStatsImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      this.startPosition,
      required this.jersey,
      required this.min,
      required this.pts,
      required this.fgm,
      required this.fga,
      required this.fg3pm,
      required this.fg3pa,
      required this.ftm,
      required this.fta,
      required this.reb,
      required this.oreb,
      required this.dreb,
      required this.blk,
      required this.stl,
      required this.to});

  factory _$PlayerStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerStatsImplFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? startPosition;
  @override
  final String jersey;
  @override
  final int min;
  @override
  final int pts;
  @override
  final int fgm;
  @override
  final int fga;
  @override
  final int fg3pm;
  @override
  final int fg3pa;
  @override
  final int ftm;
  @override
  final int fta;
  @override
  final int reb;
  @override
  final int oreb;
  @override
  final int dreb;
  @override
  final int blk;
  @override
  final int stl;
  @override
  final int to;

  @override
  String toString() {
    return 'PlayerStats(id: $id, firstName: $firstName, lastName: $lastName, startPosition: $startPosition, jersey: $jersey, min: $min, pts: $pts, fgm: $fgm, fga: $fga, fg3pm: $fg3pm, fg3pa: $fg3pa, ftm: $ftm, fta: $fta, reb: $reb, oreb: $oreb, dreb: $dreb, blk: $blk, stl: $stl, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStatsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.startPosition, startPosition) ||
                other.startPosition == startPosition) &&
            (identical(other.jersey, jersey) || other.jersey == jersey) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.pts, pts) || other.pts == pts) &&
            (identical(other.fgm, fgm) || other.fgm == fgm) &&
            (identical(other.fga, fga) || other.fga == fga) &&
            (identical(other.fg3pm, fg3pm) || other.fg3pm == fg3pm) &&
            (identical(other.fg3pa, fg3pa) || other.fg3pa == fg3pa) &&
            (identical(other.ftm, ftm) || other.ftm == ftm) &&
            (identical(other.fta, fta) || other.fta == fta) &&
            (identical(other.reb, reb) || other.reb == reb) &&
            (identical(other.oreb, oreb) || other.oreb == oreb) &&
            (identical(other.dreb, dreb) || other.dreb == dreb) &&
            (identical(other.blk, blk) || other.blk == blk) &&
            (identical(other.stl, stl) || other.stl == stl) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        startPosition,
        jersey,
        min,
        pts,
        fgm,
        fga,
        fg3pm,
        fg3pa,
        ftm,
        fta,
        reb,
        oreb,
        dreb,
        blk,
        stl,
        to
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStatsImplCopyWith<_$PlayerStatsImpl> get copyWith =>
      __$$PlayerStatsImplCopyWithImpl<_$PlayerStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerStatsImplToJson(
      this,
    );
  }
}

abstract class _PlayerStats implements PlayerStats {
  factory _PlayerStats(
      {required final int id,
      required final String firstName,
      required final String lastName,
      final String? startPosition,
      required final String jersey,
      required final int min,
      required final int pts,
      required final int fgm,
      required final int fga,
      required final int fg3pm,
      required final int fg3pa,
      required final int ftm,
      required final int fta,
      required final int reb,
      required final int oreb,
      required final int dreb,
      required final int blk,
      required final int stl,
      required final int to}) = _$PlayerStatsImpl;

  factory _PlayerStats.fromJson(Map<String, dynamic> json) =
      _$PlayerStatsImpl.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get startPosition;
  @override
  String get jersey;
  @override
  int get min;
  @override
  int get pts;
  @override
  int get fgm;
  @override
  int get fga;
  @override
  int get fg3pm;
  @override
  int get fg3pa;
  @override
  int get ftm;
  @override
  int get fta;
  @override
  int get reb;
  @override
  int get oreb;
  @override
  int get dreb;
  @override
  int get blk;
  @override
  int get stl;
  @override
  int get to;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStatsImplCopyWith<_$PlayerStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
