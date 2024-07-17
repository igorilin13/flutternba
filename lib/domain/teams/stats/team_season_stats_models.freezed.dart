// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_season_stats_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamStatValue {
  Team get team => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamStatValueCopyWith<TeamStatValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStatValueCopyWith<$Res> {
  factory $TeamStatValueCopyWith(
          TeamStatValue value, $Res Function(TeamStatValue) then) =
      _$TeamStatValueCopyWithImpl<$Res, TeamStatValue>;
  @useResult
  $Res call({Team team, double value});

  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class _$TeamStatValueCopyWithImpl<$Res, $Val extends TeamStatValue>
    implements $TeamStatValueCopyWith<$Res> {
  _$TeamStatValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamStatValueImplCopyWith<$Res>
    implements $TeamStatValueCopyWith<$Res> {
  factory _$$TeamStatValueImplCopyWith(
          _$TeamStatValueImpl value, $Res Function(_$TeamStatValueImpl) then) =
      __$$TeamStatValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team team, double value});

  @override
  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$TeamStatValueImplCopyWithImpl<$Res>
    extends _$TeamStatValueCopyWithImpl<$Res, _$TeamStatValueImpl>
    implements _$$TeamStatValueImplCopyWith<$Res> {
  __$$TeamStatValueImplCopyWithImpl(
      _$TeamStatValueImpl _value, $Res Function(_$TeamStatValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? value = null,
  }) {
    return _then(_$TeamStatValueImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TeamStatValueImpl implements _TeamStatValue {
  const _$TeamStatValueImpl({required this.team, required this.value});

  @override
  final Team team;
  @override
  final double value;

  @override
  String toString() {
    return 'TeamStatValue(team: $team, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamStatValueImpl &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, team, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamStatValueImplCopyWith<_$TeamStatValueImpl> get copyWith =>
      __$$TeamStatValueImplCopyWithImpl<_$TeamStatValueImpl>(this, _$identity);
}

abstract class _TeamStatValue implements TeamStatValue {
  const factory _TeamStatValue(
      {required final Team team,
      required final double value}) = _$TeamStatValueImpl;

  @override
  Team get team;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$TeamStatValueImplCopyWith<_$TeamStatValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeagueStatRanking {
  TeamStatCategory get category => throw _privateConstructorUsedError;
  List<TeamStatValue> get teams => throw _privateConstructorUsedError;
  int? get highlightedTeamIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeagueStatRankingCopyWith<LeagueStatRanking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueStatRankingCopyWith<$Res> {
  factory $LeagueStatRankingCopyWith(
          LeagueStatRanking value, $Res Function(LeagueStatRanking) then) =
      _$LeagueStatRankingCopyWithImpl<$Res, LeagueStatRanking>;
  @useResult
  $Res call(
      {TeamStatCategory category,
      List<TeamStatValue> teams,
      int? highlightedTeamIndex});
}

/// @nodoc
class _$LeagueStatRankingCopyWithImpl<$Res, $Val extends LeagueStatRanking>
    implements $LeagueStatRankingCopyWith<$Res> {
  _$LeagueStatRankingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? teams = null,
    Object? highlightedTeamIndex = freezed,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TeamStatCategory,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<TeamStatValue>,
      highlightedTeamIndex: freezed == highlightedTeamIndex
          ? _value.highlightedTeamIndex
          : highlightedTeamIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeagueStatRankingImplCopyWith<$Res>
    implements $LeagueStatRankingCopyWith<$Res> {
  factory _$$LeagueStatRankingImplCopyWith(_$LeagueStatRankingImpl value,
          $Res Function(_$LeagueStatRankingImpl) then) =
      __$$LeagueStatRankingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TeamStatCategory category,
      List<TeamStatValue> teams,
      int? highlightedTeamIndex});
}

/// @nodoc
class __$$LeagueStatRankingImplCopyWithImpl<$Res>
    extends _$LeagueStatRankingCopyWithImpl<$Res, _$LeagueStatRankingImpl>
    implements _$$LeagueStatRankingImplCopyWith<$Res> {
  __$$LeagueStatRankingImplCopyWithImpl(_$LeagueStatRankingImpl _value,
      $Res Function(_$LeagueStatRankingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? teams = null,
    Object? highlightedTeamIndex = freezed,
  }) {
    return _then(_$LeagueStatRankingImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TeamStatCategory,
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<TeamStatValue>,
      highlightedTeamIndex: freezed == highlightedTeamIndex
          ? _value.highlightedTeamIndex
          : highlightedTeamIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LeagueStatRankingImpl implements _LeagueStatRanking {
  const _$LeagueStatRankingImpl(
      {required this.category,
      required final List<TeamStatValue> teams,
      required this.highlightedTeamIndex})
      : _teams = teams;

  @override
  final TeamStatCategory category;
  final List<TeamStatValue> _teams;
  @override
  List<TeamStatValue> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  final int? highlightedTeamIndex;

  @override
  String toString() {
    return 'LeagueStatRanking(category: $category, teams: $teams, highlightedTeamIndex: $highlightedTeamIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueStatRankingImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._teams, _teams) &&
            (identical(other.highlightedTeamIndex, highlightedTeamIndex) ||
                other.highlightedTeamIndex == highlightedTeamIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category,
      const DeepCollectionEquality().hash(_teams), highlightedTeamIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueStatRankingImplCopyWith<_$LeagueStatRankingImpl> get copyWith =>
      __$$LeagueStatRankingImplCopyWithImpl<_$LeagueStatRankingImpl>(
          this, _$identity);
}

abstract class _LeagueStatRanking implements LeagueStatRanking {
  const factory _LeagueStatRanking(
      {required final TeamStatCategory category,
      required final List<TeamStatValue> teams,
      required final int? highlightedTeamIndex}) = _$LeagueStatRankingImpl;

  @override
  TeamStatCategory get category;
  @override
  List<TeamStatValue> get teams;
  @override
  int? get highlightedTeamIndex;
  @override
  @JsonKey(ignore: true)
  _$$LeagueStatRankingImplCopyWith<_$LeagueStatRankingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
