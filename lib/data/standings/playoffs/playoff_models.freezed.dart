// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playoff_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayoffRound _$PlayoffRoundFromJson(Map<String, dynamic> json) {
  return _PlayoffRound.fromJson(json);
}

/// @nodoc
mixin _$PlayoffRound {
  int get id => throw _privateConstructorUsedError;
  List<PlayoffSeries> get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayoffRoundCopyWith<PlayoffRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayoffRoundCopyWith<$Res> {
  factory $PlayoffRoundCopyWith(
          PlayoffRound value, $Res Function(PlayoffRound) then) =
      _$PlayoffRoundCopyWithImpl<$Res, PlayoffRound>;
  @useResult
  $Res call({int id, List<PlayoffSeries> series});
}

/// @nodoc
class _$PlayoffRoundCopyWithImpl<$Res, $Val extends PlayoffRound>
    implements $PlayoffRoundCopyWith<$Res> {
  _$PlayoffRoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? series = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<PlayoffSeries>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayoffRoundImplCopyWith<$Res>
    implements $PlayoffRoundCopyWith<$Res> {
  factory _$$PlayoffRoundImplCopyWith(
          _$PlayoffRoundImpl value, $Res Function(_$PlayoffRoundImpl) then) =
      __$$PlayoffRoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<PlayoffSeries> series});
}

/// @nodoc
class __$$PlayoffRoundImplCopyWithImpl<$Res>
    extends _$PlayoffRoundCopyWithImpl<$Res, _$PlayoffRoundImpl>
    implements _$$PlayoffRoundImplCopyWith<$Res> {
  __$$PlayoffRoundImplCopyWithImpl(
      _$PlayoffRoundImpl _value, $Res Function(_$PlayoffRoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? series = null,
  }) {
    return _then(_$PlayoffRoundImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<PlayoffSeries>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayoffRoundImpl implements _PlayoffRound {
  const _$PlayoffRoundImpl(
      {required this.id, required final List<PlayoffSeries> series})
      : _series = series;

  factory _$PlayoffRoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayoffRoundImplFromJson(json);

  @override
  final int id;
  final List<PlayoffSeries> _series;
  @override
  List<PlayoffSeries> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'PlayoffRound(id: $id, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayoffRoundImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayoffRoundImplCopyWith<_$PlayoffRoundImpl> get copyWith =>
      __$$PlayoffRoundImplCopyWithImpl<_$PlayoffRoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayoffRoundImplToJson(
      this,
    );
  }
}

abstract class _PlayoffRound implements PlayoffRound {
  const factory _PlayoffRound(
      {required final int id,
      required final List<PlayoffSeries> series}) = _$PlayoffRoundImpl;

  factory _PlayoffRound.fromJson(Map<String, dynamic> json) =
      _$PlayoffRoundImpl.fromJson;

  @override
  int get id;
  @override
  List<PlayoffSeries> get series;
  @override
  @JsonKey(ignore: true)
  _$$PlayoffRoundImplCopyWith<_$PlayoffRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayoffSeries _$PlayoffSeriesFromJson(Map<String, dynamic> json) {
  return _PlayoffSeries.fromJson(json);
}

/// @nodoc
mixin _$PlayoffSeries {
  int get conferenceId => throw _privateConstructorUsedError;
  int get homeTeamRank => throw _privateConstructorUsedError;
  int get homeTeamId => throw _privateConstructorUsedError;
  String get homeTeamName => throw _privateConstructorUsedError;
  int get homeTeamWins => throw _privateConstructorUsedError;
  int get awayTeamRank => throw _privateConstructorUsedError;
  int get awayTeamId => throw _privateConstructorUsedError;
  String get awayTeamName => throw _privateConstructorUsedError;
  int get awayTeamWins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayoffSeriesCopyWith<PlayoffSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayoffSeriesCopyWith<$Res> {
  factory $PlayoffSeriesCopyWith(
          PlayoffSeries value, $Res Function(PlayoffSeries) then) =
      _$PlayoffSeriesCopyWithImpl<$Res, PlayoffSeries>;
  @useResult
  $Res call(
      {int conferenceId,
      int homeTeamRank,
      int homeTeamId,
      String homeTeamName,
      int homeTeamWins,
      int awayTeamRank,
      int awayTeamId,
      String awayTeamName,
      int awayTeamWins});
}

/// @nodoc
class _$PlayoffSeriesCopyWithImpl<$Res, $Val extends PlayoffSeries>
    implements $PlayoffSeriesCopyWith<$Res> {
  _$PlayoffSeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conferenceId = null,
    Object? homeTeamRank = null,
    Object? homeTeamId = null,
    Object? homeTeamName = null,
    Object? homeTeamWins = null,
    Object? awayTeamRank = null,
    Object? awayTeamId = null,
    Object? awayTeamName = null,
    Object? awayTeamWins = null,
  }) {
    return _then(_value.copyWith(
      conferenceId: null == conferenceId
          ? _value.conferenceId
          : conferenceId // ignore: cast_nullable_to_non_nullable
              as int,
      homeTeamRank: null == homeTeamRank
          ? _value.homeTeamRank
          : homeTeamRank // ignore: cast_nullable_to_non_nullable
              as int,
      homeTeamId: null == homeTeamId
          ? _value.homeTeamId
          : homeTeamId // ignore: cast_nullable_to_non_nullable
              as int,
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamWins: null == homeTeamWins
          ? _value.homeTeamWins
          : homeTeamWins // ignore: cast_nullable_to_non_nullable
              as int,
      awayTeamRank: null == awayTeamRank
          ? _value.awayTeamRank
          : awayTeamRank // ignore: cast_nullable_to_non_nullable
              as int,
      awayTeamId: null == awayTeamId
          ? _value.awayTeamId
          : awayTeamId // ignore: cast_nullable_to_non_nullable
              as int,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamWins: null == awayTeamWins
          ? _value.awayTeamWins
          : awayTeamWins // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayoffSeriesImplCopyWith<$Res>
    implements $PlayoffSeriesCopyWith<$Res> {
  factory _$$PlayoffSeriesImplCopyWith(
          _$PlayoffSeriesImpl value, $Res Function(_$PlayoffSeriesImpl) then) =
      __$$PlayoffSeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int conferenceId,
      int homeTeamRank,
      int homeTeamId,
      String homeTeamName,
      int homeTeamWins,
      int awayTeamRank,
      int awayTeamId,
      String awayTeamName,
      int awayTeamWins});
}

/// @nodoc
class __$$PlayoffSeriesImplCopyWithImpl<$Res>
    extends _$PlayoffSeriesCopyWithImpl<$Res, _$PlayoffSeriesImpl>
    implements _$$PlayoffSeriesImplCopyWith<$Res> {
  __$$PlayoffSeriesImplCopyWithImpl(
      _$PlayoffSeriesImpl _value, $Res Function(_$PlayoffSeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conferenceId = null,
    Object? homeTeamRank = null,
    Object? homeTeamId = null,
    Object? homeTeamName = null,
    Object? homeTeamWins = null,
    Object? awayTeamRank = null,
    Object? awayTeamId = null,
    Object? awayTeamName = null,
    Object? awayTeamWins = null,
  }) {
    return _then(_$PlayoffSeriesImpl(
      conferenceId: null == conferenceId
          ? _value.conferenceId
          : conferenceId // ignore: cast_nullable_to_non_nullable
              as int,
      homeTeamRank: null == homeTeamRank
          ? _value.homeTeamRank
          : homeTeamRank // ignore: cast_nullable_to_non_nullable
              as int,
      homeTeamId: null == homeTeamId
          ? _value.homeTeamId
          : homeTeamId // ignore: cast_nullable_to_non_nullable
              as int,
      homeTeamName: null == homeTeamName
          ? _value.homeTeamName
          : homeTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamWins: null == homeTeamWins
          ? _value.homeTeamWins
          : homeTeamWins // ignore: cast_nullable_to_non_nullable
              as int,
      awayTeamRank: null == awayTeamRank
          ? _value.awayTeamRank
          : awayTeamRank // ignore: cast_nullable_to_non_nullable
              as int,
      awayTeamId: null == awayTeamId
          ? _value.awayTeamId
          : awayTeamId // ignore: cast_nullable_to_non_nullable
              as int,
      awayTeamName: null == awayTeamName
          ? _value.awayTeamName
          : awayTeamName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeamWins: null == awayTeamWins
          ? _value.awayTeamWins
          : awayTeamWins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayoffSeriesImpl implements _PlayoffSeries {
  const _$PlayoffSeriesImpl(
      {required this.conferenceId,
      required this.homeTeamRank,
      required this.homeTeamId,
      required this.homeTeamName,
      required this.homeTeamWins,
      required this.awayTeamRank,
      required this.awayTeamId,
      required this.awayTeamName,
      required this.awayTeamWins});

  factory _$PlayoffSeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayoffSeriesImplFromJson(json);

  @override
  final int conferenceId;
  @override
  final int homeTeamRank;
  @override
  final int homeTeamId;
  @override
  final String homeTeamName;
  @override
  final int homeTeamWins;
  @override
  final int awayTeamRank;
  @override
  final int awayTeamId;
  @override
  final String awayTeamName;
  @override
  final int awayTeamWins;

  @override
  String toString() {
    return 'PlayoffSeries(conferenceId: $conferenceId, homeTeamRank: $homeTeamRank, homeTeamId: $homeTeamId, homeTeamName: $homeTeamName, homeTeamWins: $homeTeamWins, awayTeamRank: $awayTeamRank, awayTeamId: $awayTeamId, awayTeamName: $awayTeamName, awayTeamWins: $awayTeamWins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayoffSeriesImpl &&
            (identical(other.conferenceId, conferenceId) ||
                other.conferenceId == conferenceId) &&
            (identical(other.homeTeamRank, homeTeamRank) ||
                other.homeTeamRank == homeTeamRank) &&
            (identical(other.homeTeamId, homeTeamId) ||
                other.homeTeamId == homeTeamId) &&
            (identical(other.homeTeamName, homeTeamName) ||
                other.homeTeamName == homeTeamName) &&
            (identical(other.homeTeamWins, homeTeamWins) ||
                other.homeTeamWins == homeTeamWins) &&
            (identical(other.awayTeamRank, awayTeamRank) ||
                other.awayTeamRank == awayTeamRank) &&
            (identical(other.awayTeamId, awayTeamId) ||
                other.awayTeamId == awayTeamId) &&
            (identical(other.awayTeamName, awayTeamName) ||
                other.awayTeamName == awayTeamName) &&
            (identical(other.awayTeamWins, awayTeamWins) ||
                other.awayTeamWins == awayTeamWins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      conferenceId,
      homeTeamRank,
      homeTeamId,
      homeTeamName,
      homeTeamWins,
      awayTeamRank,
      awayTeamId,
      awayTeamName,
      awayTeamWins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayoffSeriesImplCopyWith<_$PlayoffSeriesImpl> get copyWith =>
      __$$PlayoffSeriesImplCopyWithImpl<_$PlayoffSeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayoffSeriesImplToJson(
      this,
    );
  }
}

abstract class _PlayoffSeries implements PlayoffSeries {
  const factory _PlayoffSeries(
      {required final int conferenceId,
      required final int homeTeamRank,
      required final int homeTeamId,
      required final String homeTeamName,
      required final int homeTeamWins,
      required final int awayTeamRank,
      required final int awayTeamId,
      required final String awayTeamName,
      required final int awayTeamWins}) = _$PlayoffSeriesImpl;

  factory _PlayoffSeries.fromJson(Map<String, dynamic> json) =
      _$PlayoffSeriesImpl.fromJson;

  @override
  int get conferenceId;
  @override
  int get homeTeamRank;
  @override
  int get homeTeamId;
  @override
  String get homeTeamName;
  @override
  int get homeTeamWins;
  @override
  int get awayTeamRank;
  @override
  int get awayTeamId;
  @override
  String get awayTeamName;
  @override
  int get awayTeamWins;
  @override
  @JsonKey(ignore: true)
  _$$PlayoffSeriesImplCopyWith<_$PlayoffSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
