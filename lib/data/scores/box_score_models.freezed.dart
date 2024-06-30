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
  int get fgMade => throw _privateConstructorUsedError;
  int get fgAttempts => throw _privateConstructorUsedError;
  int get threePtMade => throw _privateConstructorUsedError;
  int get threePtAttempts => throw _privateConstructorUsedError;
  int get ftMade => throw _privateConstructorUsedError;
  int get ftAttempts => throw _privateConstructorUsedError;
  int get rebounds => throw _privateConstructorUsedError;
  int get offRebounds => throw _privateConstructorUsedError;
  int get defRebounds => throw _privateConstructorUsedError;
  int get blocks => throw _privateConstructorUsedError;
  int get steals => throw _privateConstructorUsedError;
  int get turnovers => throw _privateConstructorUsedError;
  int get assists => throw _privateConstructorUsedError;

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
      int fgMade,
      int fgAttempts,
      int threePtMade,
      int threePtAttempts,
      int ftMade,
      int ftAttempts,
      int rebounds,
      int offRebounds,
      int defRebounds,
      int blocks,
      int steals,
      int turnovers,
      int assists});
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
    Object? fgMade = null,
    Object? fgAttempts = null,
    Object? threePtMade = null,
    Object? threePtAttempts = null,
    Object? ftMade = null,
    Object? ftAttempts = null,
    Object? rebounds = null,
    Object? offRebounds = null,
    Object? defRebounds = null,
    Object? blocks = null,
    Object? steals = null,
    Object? turnovers = null,
    Object? assists = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fgMade: null == fgMade
          ? _value.fgMade
          : fgMade // ignore: cast_nullable_to_non_nullable
              as int,
      fgAttempts: null == fgAttempts
          ? _value.fgAttempts
          : fgAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      threePtMade: null == threePtMade
          ? _value.threePtMade
          : threePtMade // ignore: cast_nullable_to_non_nullable
              as int,
      threePtAttempts: null == threePtAttempts
          ? _value.threePtAttempts
          : threePtAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      ftMade: null == ftMade
          ? _value.ftMade
          : ftMade // ignore: cast_nullable_to_non_nullable
              as int,
      ftAttempts: null == ftAttempts
          ? _value.ftAttempts
          : ftAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      rebounds: null == rebounds
          ? _value.rebounds
          : rebounds // ignore: cast_nullable_to_non_nullable
              as int,
      offRebounds: null == offRebounds
          ? _value.offRebounds
          : offRebounds // ignore: cast_nullable_to_non_nullable
              as int,
      defRebounds: null == defRebounds
          ? _value.defRebounds
          : defRebounds // ignore: cast_nullable_to_non_nullable
              as int,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as int,
      steals: null == steals
          ? _value.steals
          : steals // ignore: cast_nullable_to_non_nullable
              as int,
      turnovers: null == turnovers
          ? _value.turnovers
          : turnovers // ignore: cast_nullable_to_non_nullable
              as int,
      assists: null == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
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
      int fgMade,
      int fgAttempts,
      int threePtMade,
      int threePtAttempts,
      int ftMade,
      int ftAttempts,
      int rebounds,
      int offRebounds,
      int defRebounds,
      int blocks,
      int steals,
      int turnovers,
      int assists});
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
    Object? fgMade = null,
    Object? fgAttempts = null,
    Object? threePtMade = null,
    Object? threePtAttempts = null,
    Object? ftMade = null,
    Object? ftAttempts = null,
    Object? rebounds = null,
    Object? offRebounds = null,
    Object? defRebounds = null,
    Object? blocks = null,
    Object? steals = null,
    Object? turnovers = null,
    Object? assists = null,
  }) {
    return _then(_$TeamStatsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fgMade: null == fgMade
          ? _value.fgMade
          : fgMade // ignore: cast_nullable_to_non_nullable
              as int,
      fgAttempts: null == fgAttempts
          ? _value.fgAttempts
          : fgAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      threePtMade: null == threePtMade
          ? _value.threePtMade
          : threePtMade // ignore: cast_nullable_to_non_nullable
              as int,
      threePtAttempts: null == threePtAttempts
          ? _value.threePtAttempts
          : threePtAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      ftMade: null == ftMade
          ? _value.ftMade
          : ftMade // ignore: cast_nullable_to_non_nullable
              as int,
      ftAttempts: null == ftAttempts
          ? _value.ftAttempts
          : ftAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      rebounds: null == rebounds
          ? _value.rebounds
          : rebounds // ignore: cast_nullable_to_non_nullable
              as int,
      offRebounds: null == offRebounds
          ? _value.offRebounds
          : offRebounds // ignore: cast_nullable_to_non_nullable
              as int,
      defRebounds: null == defRebounds
          ? _value.defRebounds
          : defRebounds // ignore: cast_nullable_to_non_nullable
              as int,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as int,
      steals: null == steals
          ? _value.steals
          : steals // ignore: cast_nullable_to_non_nullable
              as int,
      turnovers: null == turnovers
          ? _value.turnovers
          : turnovers // ignore: cast_nullable_to_non_nullable
              as int,
      assists: null == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamStatsImpl extends _TeamStats {
  _$TeamStatsImpl(
      {required this.id,
      required this.fgMade,
      required this.fgAttempts,
      required this.threePtMade,
      required this.threePtAttempts,
      required this.ftMade,
      required this.ftAttempts,
      required this.rebounds,
      required this.offRebounds,
      required this.defRebounds,
      required this.blocks,
      required this.steals,
      required this.turnovers,
      required this.assists})
      : super._();

  factory _$TeamStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamStatsImplFromJson(json);

  @override
  final int id;
  @override
  final int fgMade;
  @override
  final int fgAttempts;
  @override
  final int threePtMade;
  @override
  final int threePtAttempts;
  @override
  final int ftMade;
  @override
  final int ftAttempts;
  @override
  final int rebounds;
  @override
  final int offRebounds;
  @override
  final int defRebounds;
  @override
  final int blocks;
  @override
  final int steals;
  @override
  final int turnovers;
  @override
  final int assists;

  @override
  String toString() {
    return 'TeamStats(id: $id, fgMade: $fgMade, fgAttempts: $fgAttempts, threePtMade: $threePtMade, threePtAttempts: $threePtAttempts, ftMade: $ftMade, ftAttempts: $ftAttempts, rebounds: $rebounds, offRebounds: $offRebounds, defRebounds: $defRebounds, blocks: $blocks, steals: $steals, turnovers: $turnovers, assists: $assists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamStatsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fgMade, fgMade) || other.fgMade == fgMade) &&
            (identical(other.fgAttempts, fgAttempts) ||
                other.fgAttempts == fgAttempts) &&
            (identical(other.threePtMade, threePtMade) ||
                other.threePtMade == threePtMade) &&
            (identical(other.threePtAttempts, threePtAttempts) ||
                other.threePtAttempts == threePtAttempts) &&
            (identical(other.ftMade, ftMade) || other.ftMade == ftMade) &&
            (identical(other.ftAttempts, ftAttempts) ||
                other.ftAttempts == ftAttempts) &&
            (identical(other.rebounds, rebounds) ||
                other.rebounds == rebounds) &&
            (identical(other.offRebounds, offRebounds) ||
                other.offRebounds == offRebounds) &&
            (identical(other.defRebounds, defRebounds) ||
                other.defRebounds == defRebounds) &&
            (identical(other.blocks, blocks) || other.blocks == blocks) &&
            (identical(other.steals, steals) || other.steals == steals) &&
            (identical(other.turnovers, turnovers) ||
                other.turnovers == turnovers) &&
            (identical(other.assists, assists) || other.assists == assists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fgMade,
      fgAttempts,
      threePtMade,
      threePtAttempts,
      ftMade,
      ftAttempts,
      rebounds,
      offRebounds,
      defRebounds,
      blocks,
      steals,
      turnovers,
      assists);

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
      required final int fgMade,
      required final int fgAttempts,
      required final int threePtMade,
      required final int threePtAttempts,
      required final int ftMade,
      required final int ftAttempts,
      required final int rebounds,
      required final int offRebounds,
      required final int defRebounds,
      required final int blocks,
      required final int steals,
      required final int turnovers,
      required final int assists}) = _$TeamStatsImpl;
  _TeamStats._() : super._();

  factory _TeamStats.fromJson(Map<String, dynamic> json) =
      _$TeamStatsImpl.fromJson;

  @override
  int get id;
  @override
  int get fgMade;
  @override
  int get fgAttempts;
  @override
  int get threePtMade;
  @override
  int get threePtAttempts;
  @override
  int get ftMade;
  @override
  int get ftAttempts;
  @override
  int get rebounds;
  @override
  int get offRebounds;
  @override
  int get defRebounds;
  @override
  int get blocks;
  @override
  int get steals;
  @override
  int get turnovers;
  @override
  int get assists;
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
  String get jersey => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  int get fgMade => throw _privateConstructorUsedError;
  int get fgAttempts => throw _privateConstructorUsedError;
  int get threePtMade => throw _privateConstructorUsedError;
  int get threePtAttempts => throw _privateConstructorUsedError;
  int get ftMade => throw _privateConstructorUsedError;
  int get ftAttempts => throw _privateConstructorUsedError;
  int get rebounds => throw _privateConstructorUsedError;
  int get offRebounds => throw _privateConstructorUsedError;
  int get defRebounds => throw _privateConstructorUsedError;
  int get blocks => throw _privateConstructorUsedError;
  int get steals => throw _privateConstructorUsedError;
  int get turnovers => throw _privateConstructorUsedError;
  int get assists => throw _privateConstructorUsedError;

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
      String jersey,
      int minutes,
      int points,
      int fgMade,
      int fgAttempts,
      int threePtMade,
      int threePtAttempts,
      int ftMade,
      int ftAttempts,
      int rebounds,
      int offRebounds,
      int defRebounds,
      int blocks,
      int steals,
      int turnovers,
      int assists});
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
    Object? jersey = null,
    Object? minutes = null,
    Object? points = null,
    Object? fgMade = null,
    Object? fgAttempts = null,
    Object? threePtMade = null,
    Object? threePtAttempts = null,
    Object? ftMade = null,
    Object? ftAttempts = null,
    Object? rebounds = null,
    Object? offRebounds = null,
    Object? defRebounds = null,
    Object? blocks = null,
    Object? steals = null,
    Object? turnovers = null,
    Object? assists = null,
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
      jersey: null == jersey
          ? _value.jersey
          : jersey // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      fgMade: null == fgMade
          ? _value.fgMade
          : fgMade // ignore: cast_nullable_to_non_nullable
              as int,
      fgAttempts: null == fgAttempts
          ? _value.fgAttempts
          : fgAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      threePtMade: null == threePtMade
          ? _value.threePtMade
          : threePtMade // ignore: cast_nullable_to_non_nullable
              as int,
      threePtAttempts: null == threePtAttempts
          ? _value.threePtAttempts
          : threePtAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      ftMade: null == ftMade
          ? _value.ftMade
          : ftMade // ignore: cast_nullable_to_non_nullable
              as int,
      ftAttempts: null == ftAttempts
          ? _value.ftAttempts
          : ftAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      rebounds: null == rebounds
          ? _value.rebounds
          : rebounds // ignore: cast_nullable_to_non_nullable
              as int,
      offRebounds: null == offRebounds
          ? _value.offRebounds
          : offRebounds // ignore: cast_nullable_to_non_nullable
              as int,
      defRebounds: null == defRebounds
          ? _value.defRebounds
          : defRebounds // ignore: cast_nullable_to_non_nullable
              as int,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as int,
      steals: null == steals
          ? _value.steals
          : steals // ignore: cast_nullable_to_non_nullable
              as int,
      turnovers: null == turnovers
          ? _value.turnovers
          : turnovers // ignore: cast_nullable_to_non_nullable
              as int,
      assists: null == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
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
      String jersey,
      int minutes,
      int points,
      int fgMade,
      int fgAttempts,
      int threePtMade,
      int threePtAttempts,
      int ftMade,
      int ftAttempts,
      int rebounds,
      int offRebounds,
      int defRebounds,
      int blocks,
      int steals,
      int turnovers,
      int assists});
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
    Object? jersey = null,
    Object? minutes = null,
    Object? points = null,
    Object? fgMade = null,
    Object? fgAttempts = null,
    Object? threePtMade = null,
    Object? threePtAttempts = null,
    Object? ftMade = null,
    Object? ftAttempts = null,
    Object? rebounds = null,
    Object? offRebounds = null,
    Object? defRebounds = null,
    Object? blocks = null,
    Object? steals = null,
    Object? turnovers = null,
    Object? assists = null,
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
      jersey: null == jersey
          ? _value.jersey
          : jersey // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      fgMade: null == fgMade
          ? _value.fgMade
          : fgMade // ignore: cast_nullable_to_non_nullable
              as int,
      fgAttempts: null == fgAttempts
          ? _value.fgAttempts
          : fgAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      threePtMade: null == threePtMade
          ? _value.threePtMade
          : threePtMade // ignore: cast_nullable_to_non_nullable
              as int,
      threePtAttempts: null == threePtAttempts
          ? _value.threePtAttempts
          : threePtAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      ftMade: null == ftMade
          ? _value.ftMade
          : ftMade // ignore: cast_nullable_to_non_nullable
              as int,
      ftAttempts: null == ftAttempts
          ? _value.ftAttempts
          : ftAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      rebounds: null == rebounds
          ? _value.rebounds
          : rebounds // ignore: cast_nullable_to_non_nullable
              as int,
      offRebounds: null == offRebounds
          ? _value.offRebounds
          : offRebounds // ignore: cast_nullable_to_non_nullable
              as int,
      defRebounds: null == defRebounds
          ? _value.defRebounds
          : defRebounds // ignore: cast_nullable_to_non_nullable
              as int,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as int,
      steals: null == steals
          ? _value.steals
          : steals // ignore: cast_nullable_to_non_nullable
              as int,
      turnovers: null == turnovers
          ? _value.turnovers
          : turnovers // ignore: cast_nullable_to_non_nullable
              as int,
      assists: null == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
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
      required this.jersey,
      required this.minutes,
      required this.points,
      required this.fgMade,
      required this.fgAttempts,
      required this.threePtMade,
      required this.threePtAttempts,
      required this.ftMade,
      required this.ftAttempts,
      required this.rebounds,
      required this.offRebounds,
      required this.defRebounds,
      required this.blocks,
      required this.steals,
      required this.turnovers,
      required this.assists});

  factory _$PlayerStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerStatsImplFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String jersey;
  @override
  final int minutes;
  @override
  final int points;
  @override
  final int fgMade;
  @override
  final int fgAttempts;
  @override
  final int threePtMade;
  @override
  final int threePtAttempts;
  @override
  final int ftMade;
  @override
  final int ftAttempts;
  @override
  final int rebounds;
  @override
  final int offRebounds;
  @override
  final int defRebounds;
  @override
  final int blocks;
  @override
  final int steals;
  @override
  final int turnovers;
  @override
  final int assists;

  @override
  String toString() {
    return 'PlayerStats(id: $id, firstName: $firstName, lastName: $lastName, jersey: $jersey, minutes: $minutes, points: $points, fgMade: $fgMade, fgAttempts: $fgAttempts, threePtMade: $threePtMade, threePtAttempts: $threePtAttempts, ftMade: $ftMade, ftAttempts: $ftAttempts, rebounds: $rebounds, offRebounds: $offRebounds, defRebounds: $defRebounds, blocks: $blocks, steals: $steals, turnovers: $turnovers, assists: $assists)';
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
            (identical(other.jersey, jersey) || other.jersey == jersey) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.fgMade, fgMade) || other.fgMade == fgMade) &&
            (identical(other.fgAttempts, fgAttempts) ||
                other.fgAttempts == fgAttempts) &&
            (identical(other.threePtMade, threePtMade) ||
                other.threePtMade == threePtMade) &&
            (identical(other.threePtAttempts, threePtAttempts) ||
                other.threePtAttempts == threePtAttempts) &&
            (identical(other.ftMade, ftMade) || other.ftMade == ftMade) &&
            (identical(other.ftAttempts, ftAttempts) ||
                other.ftAttempts == ftAttempts) &&
            (identical(other.rebounds, rebounds) ||
                other.rebounds == rebounds) &&
            (identical(other.offRebounds, offRebounds) ||
                other.offRebounds == offRebounds) &&
            (identical(other.defRebounds, defRebounds) ||
                other.defRebounds == defRebounds) &&
            (identical(other.blocks, blocks) || other.blocks == blocks) &&
            (identical(other.steals, steals) || other.steals == steals) &&
            (identical(other.turnovers, turnovers) ||
                other.turnovers == turnovers) &&
            (identical(other.assists, assists) || other.assists == assists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        jersey,
        minutes,
        points,
        fgMade,
        fgAttempts,
        threePtMade,
        threePtAttempts,
        ftMade,
        ftAttempts,
        rebounds,
        offRebounds,
        defRebounds,
        blocks,
        steals,
        turnovers,
        assists
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
      required final String jersey,
      required final int minutes,
      required final int points,
      required final int fgMade,
      required final int fgAttempts,
      required final int threePtMade,
      required final int threePtAttempts,
      required final int ftMade,
      required final int ftAttempts,
      required final int rebounds,
      required final int offRebounds,
      required final int defRebounds,
      required final int blocks,
      required final int steals,
      required final int turnovers,
      required final int assists}) = _$PlayerStatsImpl;

  factory _PlayerStats.fromJson(Map<String, dynamic> json) =
      _$PlayerStatsImpl.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get jersey;
  @override
  int get minutes;
  @override
  int get points;
  @override
  int get fgMade;
  @override
  int get fgAttempts;
  @override
  int get threePtMade;
  @override
  int get threePtAttempts;
  @override
  int get ftMade;
  @override
  int get ftAttempts;
  @override
  int get rebounds;
  @override
  int get offRebounds;
  @override
  int get defRebounds;
  @override
  int get blocks;
  @override
  int get steals;
  @override
  int get turnovers;
  @override
  int get assists;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStatsImplCopyWith<_$PlayerStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
