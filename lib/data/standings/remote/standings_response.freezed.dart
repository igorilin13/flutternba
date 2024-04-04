// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StandingsResponse _$StandingsResponseFromJson(Map<String, dynamic> json) {
  return _StandingsResponse.fromJson(json);
}

/// @nodoc
mixin _$StandingsResponse {
  StandingsTeamInfo get team => throw _privateConstructorUsedError;
  TeamConferenceStandings get conference => throw _privateConstructorUsedError;
  TeamDivisionStandings get division => throw _privateConstructorUsedError;
  StandingsBreakdown get win => throw _privateConstructorUsedError;
  StandingsBreakdown get loss => throw _privateConstructorUsedError;
  String? get gamesBehind => throw _privateConstructorUsedError;
  int get streak => throw _privateConstructorUsedError;
  bool get winStreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingsResponseCopyWith<StandingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsResponseCopyWith<$Res> {
  factory $StandingsResponseCopyWith(
          StandingsResponse value, $Res Function(StandingsResponse) then) =
      _$StandingsResponseCopyWithImpl<$Res, StandingsResponse>;
  @useResult
  $Res call(
      {StandingsTeamInfo team,
      TeamConferenceStandings conference,
      TeamDivisionStandings division,
      StandingsBreakdown win,
      StandingsBreakdown loss,
      String? gamesBehind,
      int streak,
      bool winStreak});

  $StandingsTeamInfoCopyWith<$Res> get team;
  $TeamConferenceStandingsCopyWith<$Res> get conference;
  $TeamDivisionStandingsCopyWith<$Res> get division;
  $StandingsBreakdownCopyWith<$Res> get win;
  $StandingsBreakdownCopyWith<$Res> get loss;
}

/// @nodoc
class _$StandingsResponseCopyWithImpl<$Res, $Val extends StandingsResponse>
    implements $StandingsResponseCopyWith<$Res> {
  _$StandingsResponseCopyWithImpl(this._value, this._then);

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
    Object? win = null,
    Object? loss = null,
    Object? gamesBehind = freezed,
    Object? streak = null,
    Object? winStreak = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as StandingsTeamInfo,
      conference: null == conference
          ? _value.conference
          : conference // ignore: cast_nullable_to_non_nullable
              as TeamConferenceStandings,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as TeamDivisionStandings,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as StandingsBreakdown,
      loss: null == loss
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as StandingsBreakdown,
      gamesBehind: freezed == gamesBehind
          ? _value.gamesBehind
          : gamesBehind // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $StandingsTeamInfoCopyWith<$Res> get team {
    return $StandingsTeamInfoCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamConferenceStandingsCopyWith<$Res> get conference {
    return $TeamConferenceStandingsCopyWith<$Res>(_value.conference, (value) {
      return _then(_value.copyWith(conference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamDivisionStandingsCopyWith<$Res> get division {
    return $TeamDivisionStandingsCopyWith<$Res>(_value.division, (value) {
      return _then(_value.copyWith(division: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StandingsBreakdownCopyWith<$Res> get win {
    return $StandingsBreakdownCopyWith<$Res>(_value.win, (value) {
      return _then(_value.copyWith(win: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StandingsBreakdownCopyWith<$Res> get loss {
    return $StandingsBreakdownCopyWith<$Res>(_value.loss, (value) {
      return _then(_value.copyWith(loss: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StandingsResponseImplCopyWith<$Res>
    implements $StandingsResponseCopyWith<$Res> {
  factory _$$StandingsResponseImplCopyWith(_$StandingsResponseImpl value,
          $Res Function(_$StandingsResponseImpl) then) =
      __$$StandingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StandingsTeamInfo team,
      TeamConferenceStandings conference,
      TeamDivisionStandings division,
      StandingsBreakdown win,
      StandingsBreakdown loss,
      String? gamesBehind,
      int streak,
      bool winStreak});

  @override
  $StandingsTeamInfoCopyWith<$Res> get team;
  @override
  $TeamConferenceStandingsCopyWith<$Res> get conference;
  @override
  $TeamDivisionStandingsCopyWith<$Res> get division;
  @override
  $StandingsBreakdownCopyWith<$Res> get win;
  @override
  $StandingsBreakdownCopyWith<$Res> get loss;
}

/// @nodoc
class __$$StandingsResponseImplCopyWithImpl<$Res>
    extends _$StandingsResponseCopyWithImpl<$Res, _$StandingsResponseImpl>
    implements _$$StandingsResponseImplCopyWith<$Res> {
  __$$StandingsResponseImplCopyWithImpl(_$StandingsResponseImpl _value,
      $Res Function(_$StandingsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? conference = null,
    Object? division = null,
    Object? win = null,
    Object? loss = null,
    Object? gamesBehind = freezed,
    Object? streak = null,
    Object? winStreak = null,
  }) {
    return _then(_$StandingsResponseImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as StandingsTeamInfo,
      conference: null == conference
          ? _value.conference
          : conference // ignore: cast_nullable_to_non_nullable
              as TeamConferenceStandings,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as TeamDivisionStandings,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as StandingsBreakdown,
      loss: null == loss
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as StandingsBreakdown,
      gamesBehind: freezed == gamesBehind
          ? _value.gamesBehind
          : gamesBehind // ignore: cast_nullable_to_non_nullable
              as String?,
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

@JsonSerializable(explicitToJson: true)
class _$StandingsResponseImpl implements _StandingsResponse {
  _$StandingsResponseImpl(
      {required this.team,
      required this.conference,
      required this.division,
      required this.win,
      required this.loss,
      this.gamesBehind,
      required this.streak,
      required this.winStreak});

  factory _$StandingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingsResponseImplFromJson(json);

  @override
  final StandingsTeamInfo team;
  @override
  final TeamConferenceStandings conference;
  @override
  final TeamDivisionStandings division;
  @override
  final StandingsBreakdown win;
  @override
  final StandingsBreakdown loss;
  @override
  final String? gamesBehind;
  @override
  final int streak;
  @override
  final bool winStreak;

  @override
  String toString() {
    return 'StandingsResponse(team: $team, conference: $conference, division: $division, win: $win, loss: $loss, gamesBehind: $gamesBehind, streak: $streak, winStreak: $winStreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingsResponseImpl &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.conference, conference) ||
                other.conference == conference) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.win, win) || other.win == win) &&
            (identical(other.loss, loss) || other.loss == loss) &&
            (identical(other.gamesBehind, gamesBehind) ||
                other.gamesBehind == gamesBehind) &&
            (identical(other.streak, streak) || other.streak == streak) &&
            (identical(other.winStreak, winStreak) ||
                other.winStreak == winStreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, team, conference, division, win,
      loss, gamesBehind, streak, winStreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingsResponseImplCopyWith<_$StandingsResponseImpl> get copyWith =>
      __$$StandingsResponseImplCopyWithImpl<_$StandingsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingsResponseImplToJson(
      this,
    );
  }
}

abstract class _StandingsResponse implements StandingsResponse {
  factory _StandingsResponse(
      {required final StandingsTeamInfo team,
      required final TeamConferenceStandings conference,
      required final TeamDivisionStandings division,
      required final StandingsBreakdown win,
      required final StandingsBreakdown loss,
      final String? gamesBehind,
      required final int streak,
      required final bool winStreak}) = _$StandingsResponseImpl;

  factory _StandingsResponse.fromJson(Map<String, dynamic> json) =
      _$StandingsResponseImpl.fromJson;

  @override
  StandingsTeamInfo get team;
  @override
  TeamConferenceStandings get conference;
  @override
  TeamDivisionStandings get division;
  @override
  StandingsBreakdown get win;
  @override
  StandingsBreakdown get loss;
  @override
  String? get gamesBehind;
  @override
  int get streak;
  @override
  bool get winStreak;
  @override
  @JsonKey(ignore: true)
  _$$StandingsResponseImplCopyWith<_$StandingsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StandingsTeamInfo _$StandingsTeamInfoFromJson(Map<String, dynamic> json) {
  return _StandingsTeamInfo.fromJson(json);
}

/// @nodoc
mixin _$StandingsTeamInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingsTeamInfoCopyWith<StandingsTeamInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsTeamInfoCopyWith<$Res> {
  factory $StandingsTeamInfoCopyWith(
          StandingsTeamInfo value, $Res Function(StandingsTeamInfo) then) =
      _$StandingsTeamInfoCopyWithImpl<$Res, StandingsTeamInfo>;
  @useResult
  $Res call({int id, String name, String nickname});
}

/// @nodoc
class _$StandingsTeamInfoCopyWithImpl<$Res, $Val extends StandingsTeamInfo>
    implements $StandingsTeamInfoCopyWith<$Res> {
  _$StandingsTeamInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nickname = null,
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
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandingsTeamInfoImplCopyWith<$Res>
    implements $StandingsTeamInfoCopyWith<$Res> {
  factory _$$StandingsTeamInfoImplCopyWith(_$StandingsTeamInfoImpl value,
          $Res Function(_$StandingsTeamInfoImpl) then) =
      __$$StandingsTeamInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String nickname});
}

/// @nodoc
class __$$StandingsTeamInfoImplCopyWithImpl<$Res>
    extends _$StandingsTeamInfoCopyWithImpl<$Res, _$StandingsTeamInfoImpl>
    implements _$$StandingsTeamInfoImplCopyWith<$Res> {
  __$$StandingsTeamInfoImplCopyWithImpl(_$StandingsTeamInfoImpl _value,
      $Res Function(_$StandingsTeamInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nickname = null,
  }) {
    return _then(_$StandingsTeamInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$StandingsTeamInfoImpl implements _StandingsTeamInfo {
  _$StandingsTeamInfoImpl(
      {required this.id, required this.name, required this.nickname});

  factory _$StandingsTeamInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingsTeamInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String nickname;

  @override
  String toString() {
    return 'StandingsTeamInfo(id: $id, name: $name, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingsTeamInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingsTeamInfoImplCopyWith<_$StandingsTeamInfoImpl> get copyWith =>
      __$$StandingsTeamInfoImplCopyWithImpl<_$StandingsTeamInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingsTeamInfoImplToJson(
      this,
    );
  }
}

abstract class _StandingsTeamInfo implements StandingsTeamInfo {
  factory _StandingsTeamInfo(
      {required final int id,
      required final String name,
      required final String nickname}) = _$StandingsTeamInfoImpl;

  factory _StandingsTeamInfo.fromJson(Map<String, dynamic> json) =
      _$StandingsTeamInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$StandingsTeamInfoImplCopyWith<_$StandingsTeamInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamConferenceStandings _$TeamConferenceStandingsFromJson(
    Map<String, dynamic> json) {
  return _TeamConferenceStandings.fromJson(json);
}

/// @nodoc
mixin _$TeamConferenceStandings {
  @JsonKey(name: 'name')
  String get conferenceName => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get win => throw _privateConstructorUsedError;
  int get loss => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamConferenceStandingsCopyWith<TeamConferenceStandings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamConferenceStandingsCopyWith<$Res> {
  factory $TeamConferenceStandingsCopyWith(TeamConferenceStandings value,
          $Res Function(TeamConferenceStandings) then) =
      _$TeamConferenceStandingsCopyWithImpl<$Res, TeamConferenceStandings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String conferenceName,
      int rank,
      int win,
      int loss});
}

/// @nodoc
class _$TeamConferenceStandingsCopyWithImpl<$Res,
        $Val extends TeamConferenceStandings>
    implements $TeamConferenceStandingsCopyWith<$Res> {
  _$TeamConferenceStandingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conferenceName = null,
    Object? rank = null,
    Object? win = null,
    Object? loss = null,
  }) {
    return _then(_value.copyWith(
      conferenceName: null == conferenceName
          ? _value.conferenceName
          : conferenceName // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$TeamConferenceStandingsImplCopyWith<$Res>
    implements $TeamConferenceStandingsCopyWith<$Res> {
  factory _$$TeamConferenceStandingsImplCopyWith(
          _$TeamConferenceStandingsImpl value,
          $Res Function(_$TeamConferenceStandingsImpl) then) =
      __$$TeamConferenceStandingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String conferenceName,
      int rank,
      int win,
      int loss});
}

/// @nodoc
class __$$TeamConferenceStandingsImplCopyWithImpl<$Res>
    extends _$TeamConferenceStandingsCopyWithImpl<$Res,
        _$TeamConferenceStandingsImpl>
    implements _$$TeamConferenceStandingsImplCopyWith<$Res> {
  __$$TeamConferenceStandingsImplCopyWithImpl(
      _$TeamConferenceStandingsImpl _value,
      $Res Function(_$TeamConferenceStandingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conferenceName = null,
    Object? rank = null,
    Object? win = null,
    Object? loss = null,
  }) {
    return _then(_$TeamConferenceStandingsImpl(
      conferenceName: null == conferenceName
          ? _value.conferenceName
          : conferenceName // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$TeamConferenceStandingsImpl implements _TeamConferenceStandings {
  _$TeamConferenceStandingsImpl(
      {@JsonKey(name: 'name') required this.conferenceName,
      required this.rank,
      required this.win,
      required this.loss});

  factory _$TeamConferenceStandingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamConferenceStandingsImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String conferenceName;
  @override
  final int rank;
  @override
  final int win;
  @override
  final int loss;

  @override
  String toString() {
    return 'TeamConferenceStandings(conferenceName: $conferenceName, rank: $rank, win: $win, loss: $loss)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamConferenceStandingsImpl &&
            (identical(other.conferenceName, conferenceName) ||
                other.conferenceName == conferenceName) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.win, win) || other.win == win) &&
            (identical(other.loss, loss) || other.loss == loss));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, conferenceName, rank, win, loss);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamConferenceStandingsImplCopyWith<_$TeamConferenceStandingsImpl>
      get copyWith => __$$TeamConferenceStandingsImplCopyWithImpl<
          _$TeamConferenceStandingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamConferenceStandingsImplToJson(
      this,
    );
  }
}

abstract class _TeamConferenceStandings implements TeamConferenceStandings {
  factory _TeamConferenceStandings(
      {@JsonKey(name: 'name') required final String conferenceName,
      required final int rank,
      required final int win,
      required final int loss}) = _$TeamConferenceStandingsImpl;

  factory _TeamConferenceStandings.fromJson(Map<String, dynamic> json) =
      _$TeamConferenceStandingsImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get conferenceName;
  @override
  int get rank;
  @override
  int get win;
  @override
  int get loss;
  @override
  @JsonKey(ignore: true)
  _$$TeamConferenceStandingsImplCopyWith<_$TeamConferenceStandingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TeamDivisionStandings _$TeamDivisionStandingsFromJson(
    Map<String, dynamic> json) {
  return _TeamDivisionStandings.fromJson(json);
}

/// @nodoc
mixin _$TeamDivisionStandings {
  @JsonKey(name: 'name')
  String get divisionName => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get win => throw _privateConstructorUsedError;
  int get loss => throw _privateConstructorUsedError;
  String? get gamesBehind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamDivisionStandingsCopyWith<TeamDivisionStandings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamDivisionStandingsCopyWith<$Res> {
  factory $TeamDivisionStandingsCopyWith(TeamDivisionStandings value,
          $Res Function(TeamDivisionStandings) then) =
      _$TeamDivisionStandingsCopyWithImpl<$Res, TeamDivisionStandings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String divisionName,
      int rank,
      int win,
      int loss,
      String? gamesBehind});
}

/// @nodoc
class _$TeamDivisionStandingsCopyWithImpl<$Res,
        $Val extends TeamDivisionStandings>
    implements $TeamDivisionStandingsCopyWith<$Res> {
  _$TeamDivisionStandingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? divisionName = null,
    Object? rank = null,
    Object? win = null,
    Object? loss = null,
    Object? gamesBehind = freezed,
  }) {
    return _then(_value.copyWith(
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
      loss: null == loss
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as int,
      gamesBehind: freezed == gamesBehind
          ? _value.gamesBehind
          : gamesBehind // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamDivisionStandingsImplCopyWith<$Res>
    implements $TeamDivisionStandingsCopyWith<$Res> {
  factory _$$TeamDivisionStandingsImplCopyWith(
          _$TeamDivisionStandingsImpl value,
          $Res Function(_$TeamDivisionStandingsImpl) then) =
      __$$TeamDivisionStandingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String divisionName,
      int rank,
      int win,
      int loss,
      String? gamesBehind});
}

/// @nodoc
class __$$TeamDivisionStandingsImplCopyWithImpl<$Res>
    extends _$TeamDivisionStandingsCopyWithImpl<$Res,
        _$TeamDivisionStandingsImpl>
    implements _$$TeamDivisionStandingsImplCopyWith<$Res> {
  __$$TeamDivisionStandingsImplCopyWithImpl(_$TeamDivisionStandingsImpl _value,
      $Res Function(_$TeamDivisionStandingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? divisionName = null,
    Object? rank = null,
    Object? win = null,
    Object? loss = null,
    Object? gamesBehind = freezed,
  }) {
    return _then(_$TeamDivisionStandingsImpl(
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
      loss: null == loss
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
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
class _$TeamDivisionStandingsImpl implements _TeamDivisionStandings {
  _$TeamDivisionStandingsImpl(
      {@JsonKey(name: 'name') required this.divisionName,
      required this.rank,
      required this.win,
      required this.loss,
      this.gamesBehind});

  factory _$TeamDivisionStandingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamDivisionStandingsImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String divisionName;
  @override
  final int rank;
  @override
  final int win;
  @override
  final int loss;
  @override
  final String? gamesBehind;

  @override
  String toString() {
    return 'TeamDivisionStandings(divisionName: $divisionName, rank: $rank, win: $win, loss: $loss, gamesBehind: $gamesBehind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamDivisionStandingsImpl &&
            (identical(other.divisionName, divisionName) ||
                other.divisionName == divisionName) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.win, win) || other.win == win) &&
            (identical(other.loss, loss) || other.loss == loss) &&
            (identical(other.gamesBehind, gamesBehind) ||
                other.gamesBehind == gamesBehind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, divisionName, rank, win, loss, gamesBehind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamDivisionStandingsImplCopyWith<_$TeamDivisionStandingsImpl>
      get copyWith => __$$TeamDivisionStandingsImplCopyWithImpl<
          _$TeamDivisionStandingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamDivisionStandingsImplToJson(
      this,
    );
  }
}

abstract class _TeamDivisionStandings implements TeamDivisionStandings {
  factory _TeamDivisionStandings(
      {@JsonKey(name: 'name') required final String divisionName,
      required final int rank,
      required final int win,
      required final int loss,
      final String? gamesBehind}) = _$TeamDivisionStandingsImpl;

  factory _TeamDivisionStandings.fromJson(Map<String, dynamic> json) =
      _$TeamDivisionStandingsImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get divisionName;
  @override
  int get rank;
  @override
  int get win;
  @override
  int get loss;
  @override
  String? get gamesBehind;
  @override
  @JsonKey(ignore: true)
  _$$TeamDivisionStandingsImplCopyWith<_$TeamDivisionStandingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StandingsBreakdown _$StandingsBreakdownFromJson(Map<String, dynamic> json) {
  return _StandingsBreakdown.fromJson(json);
}

/// @nodoc
mixin _$StandingsBreakdown {
  int get home => throw _privateConstructorUsedError;
  int get away => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get percentage => throw _privateConstructorUsedError;
  int get lastTen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingsBreakdownCopyWith<StandingsBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsBreakdownCopyWith<$Res> {
  factory $StandingsBreakdownCopyWith(
          StandingsBreakdown value, $Res Function(StandingsBreakdown) then) =
      _$StandingsBreakdownCopyWithImpl<$Res, StandingsBreakdown>;
  @useResult
  $Res call({int home, int away, int total, String percentage, int lastTen});
}

/// @nodoc
class _$StandingsBreakdownCopyWithImpl<$Res, $Val extends StandingsBreakdown>
    implements $StandingsBreakdownCopyWith<$Res> {
  _$StandingsBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
    Object? total = null,
    Object? percentage = null,
    Object? lastTen = null,
  }) {
    return _then(_value.copyWith(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
      lastTen: null == lastTen
          ? _value.lastTen
          : lastTen // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandingsBreakdownImplCopyWith<$Res>
    implements $StandingsBreakdownCopyWith<$Res> {
  factory _$$StandingsBreakdownImplCopyWith(_$StandingsBreakdownImpl value,
          $Res Function(_$StandingsBreakdownImpl) then) =
      __$$StandingsBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int home, int away, int total, String percentage, int lastTen});
}

/// @nodoc
class __$$StandingsBreakdownImplCopyWithImpl<$Res>
    extends _$StandingsBreakdownCopyWithImpl<$Res, _$StandingsBreakdownImpl>
    implements _$$StandingsBreakdownImplCopyWith<$Res> {
  __$$StandingsBreakdownImplCopyWithImpl(_$StandingsBreakdownImpl _value,
      $Res Function(_$StandingsBreakdownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
    Object? total = null,
    Object? percentage = null,
    Object? lastTen = null,
  }) {
    return _then(_$StandingsBreakdownImpl(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
      lastTen: null == lastTen
          ? _value.lastTen
          : lastTen // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$StandingsBreakdownImpl implements _StandingsBreakdown {
  _$StandingsBreakdownImpl(
      {required this.home,
      required this.away,
      required this.total,
      required this.percentage,
      required this.lastTen});

  factory _$StandingsBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingsBreakdownImplFromJson(json);

  @override
  final int home;
  @override
  final int away;
  @override
  final int total;
  @override
  final String percentage;
  @override
  final int lastTen;

  @override
  String toString() {
    return 'StandingsBreakdown(home: $home, away: $away, total: $total, percentage: $percentage, lastTen: $lastTen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingsBreakdownImpl &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.lastTen, lastTen) || other.lastTen == lastTen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, home, away, total, percentage, lastTen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingsBreakdownImplCopyWith<_$StandingsBreakdownImpl> get copyWith =>
      __$$StandingsBreakdownImplCopyWithImpl<_$StandingsBreakdownImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingsBreakdownImplToJson(
      this,
    );
  }
}

abstract class _StandingsBreakdown implements StandingsBreakdown {
  factory _StandingsBreakdown(
      {required final int home,
      required final int away,
      required final int total,
      required final String percentage,
      required final int lastTen}) = _$StandingsBreakdownImpl;

  factory _StandingsBreakdown.fromJson(Map<String, dynamic> json) =
      _$StandingsBreakdownImpl.fromJson;

  @override
  int get home;
  @override
  int get away;
  @override
  int get total;
  @override
  String get percentage;
  @override
  int get lastTen;
  @override
  @JsonKey(ignore: true)
  _$$StandingsBreakdownImplCopyWith<_$StandingsBreakdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
