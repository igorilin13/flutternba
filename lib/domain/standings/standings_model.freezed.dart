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
mixin _$StandingsCollection {
  String? get title => throw _privateConstructorUsedError;
  List<StandingsGroup> get groups => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StandingsCollectionCopyWith<StandingsCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsCollectionCopyWith<$Res> {
  factory $StandingsCollectionCopyWith(
          StandingsCollection value, $Res Function(StandingsCollection) then) =
      _$StandingsCollectionCopyWithImpl<$Res, StandingsCollection>;
  @useResult
  $Res call({String? title, List<StandingsGroup> groups});
}

/// @nodoc
class _$StandingsCollectionCopyWithImpl<$Res, $Val extends StandingsCollection>
    implements $StandingsCollectionCopyWith<$Res> {
  _$StandingsCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<StandingsGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandingsCollectionImplCopyWith<$Res>
    implements $StandingsCollectionCopyWith<$Res> {
  factory _$$StandingsCollectionImplCopyWith(_$StandingsCollectionImpl value,
          $Res Function(_$StandingsCollectionImpl) then) =
      __$$StandingsCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<StandingsGroup> groups});
}

/// @nodoc
class __$$StandingsCollectionImplCopyWithImpl<$Res>
    extends _$StandingsCollectionCopyWithImpl<$Res, _$StandingsCollectionImpl>
    implements _$$StandingsCollectionImplCopyWith<$Res> {
  __$$StandingsCollectionImplCopyWithImpl(_$StandingsCollectionImpl _value,
      $Res Function(_$StandingsCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? groups = null,
  }) {
    return _then(_$StandingsCollectionImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<StandingsGroup>,
    ));
  }
}

/// @nodoc

class _$StandingsCollectionImpl extends _StandingsCollection {
  const _$StandingsCollectionImpl(
      {this.title, required final List<StandingsGroup> groups})
      : _groups = groups,
        super._();

  @override
  final String? title;
  final List<StandingsGroup> _groups;
  @override
  List<StandingsGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'StandingsCollection(title: $title, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingsCollectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingsCollectionImplCopyWith<_$StandingsCollectionImpl> get copyWith =>
      __$$StandingsCollectionImplCopyWithImpl<_$StandingsCollectionImpl>(
          this, _$identity);
}

abstract class _StandingsCollection extends StandingsCollection {
  const factory _StandingsCollection(
      {final String? title,
      required final List<StandingsGroup> groups}) = _$StandingsCollectionImpl;
  const _StandingsCollection._() : super._();

  @override
  String? get title;
  @override
  List<StandingsGroup> get groups;
  @override
  @JsonKey(ignore: true)
  _$$StandingsCollectionImplCopyWith<_$StandingsCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StandingsGroup {
  String get title => throw _privateConstructorUsedError;
  List<TeamStandings> get teams => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StandingsGroupCopyWith<StandingsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsGroupCopyWith<$Res> {
  factory $StandingsGroupCopyWith(
          StandingsGroup value, $Res Function(StandingsGroup) then) =
      _$StandingsGroupCopyWithImpl<$Res, StandingsGroup>;
  @useResult
  $Res call({String title, List<TeamStandings> teams});
}

/// @nodoc
class _$StandingsGroupCopyWithImpl<$Res, $Val extends StandingsGroup>
    implements $StandingsGroupCopyWith<$Res> {
  _$StandingsGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? teams = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<TeamStandings>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandingsGroupImplCopyWith<$Res>
    implements $StandingsGroupCopyWith<$Res> {
  factory _$$StandingsGroupImplCopyWith(_$StandingsGroupImpl value,
          $Res Function(_$StandingsGroupImpl) then) =
      __$$StandingsGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<TeamStandings> teams});
}

/// @nodoc
class __$$StandingsGroupImplCopyWithImpl<$Res>
    extends _$StandingsGroupCopyWithImpl<$Res, _$StandingsGroupImpl>
    implements _$$StandingsGroupImplCopyWith<$Res> {
  __$$StandingsGroupImplCopyWithImpl(
      _$StandingsGroupImpl _value, $Res Function(_$StandingsGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? teams = null,
  }) {
    return _then(_$StandingsGroupImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<TeamStandings>,
    ));
  }
}

/// @nodoc

class _$StandingsGroupImpl extends _StandingsGroup {
  const _$StandingsGroupImpl(
      {required this.title, required final List<TeamStandings> teams})
      : _teams = teams,
        super._();

  @override
  final String title;
  final List<TeamStandings> _teams;
  @override
  List<TeamStandings> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  String toString() {
    return 'StandingsGroup(title: $title, teams: $teams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingsGroupImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingsGroupImplCopyWith<_$StandingsGroupImpl> get copyWith =>
      __$$StandingsGroupImplCopyWithImpl<_$StandingsGroupImpl>(
          this, _$identity);
}

abstract class _StandingsGroup extends StandingsGroup {
  const factory _StandingsGroup(
      {required final String title,
      required final List<TeamStandings> teams}) = _$StandingsGroupImpl;
  const _StandingsGroup._() : super._();

  @override
  String get title;
  @override
  List<TeamStandings> get teams;
  @override
  @JsonKey(ignore: true)
  _$$StandingsGroupImplCopyWith<_$StandingsGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
