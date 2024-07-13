// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playoff_series_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayoffSeriesGames {
  List<PlayoffGameItem> get items => throw _privateConstructorUsedError;
  Team get homeTeam => throw _privateConstructorUsedError;
  Team get visitorTeam => throw _privateConstructorUsedError;
  int get homeTeamWins => throw _privateConstructorUsedError;
  int get visitorTeamWins => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayoffSeriesGamesCopyWith<PlayoffSeriesGames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayoffSeriesGamesCopyWith<$Res> {
  factory $PlayoffSeriesGamesCopyWith(
          PlayoffSeriesGames value, $Res Function(PlayoffSeriesGames) then) =
      _$PlayoffSeriesGamesCopyWithImpl<$Res, PlayoffSeriesGames>;
  @useResult
  $Res call(
      {List<PlayoffGameItem> items,
      Team homeTeam,
      Team visitorTeam,
      int homeTeamWins,
      int visitorTeamWins,
      bool isFinished});

  $TeamCopyWith<$Res> get homeTeam;
  $TeamCopyWith<$Res> get visitorTeam;
}

/// @nodoc
class _$PlayoffSeriesGamesCopyWithImpl<$Res, $Val extends PlayoffSeriesGames>
    implements $PlayoffSeriesGamesCopyWith<$Res> {
  _$PlayoffSeriesGamesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? homeTeam = null,
    Object? visitorTeam = null,
    Object? homeTeamWins = null,
    Object? visitorTeamWins = null,
    Object? isFinished = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlayoffGameItem>,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      visitorTeam: null == visitorTeam
          ? _value.visitorTeam
          : visitorTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      homeTeamWins: null == homeTeamWins
          ? _value.homeTeamWins
          : homeTeamWins // ignore: cast_nullable_to_non_nullable
              as int,
      visitorTeamWins: null == visitorTeamWins
          ? _value.visitorTeamWins
          : visitorTeamWins // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$PlayoffSeriesGamesImplCopyWith<$Res>
    implements $PlayoffSeriesGamesCopyWith<$Res> {
  factory _$$PlayoffSeriesGamesImplCopyWith(_$PlayoffSeriesGamesImpl value,
          $Res Function(_$PlayoffSeriesGamesImpl) then) =
      __$$PlayoffSeriesGamesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlayoffGameItem> items,
      Team homeTeam,
      Team visitorTeam,
      int homeTeamWins,
      int visitorTeamWins,
      bool isFinished});

  @override
  $TeamCopyWith<$Res> get homeTeam;
  @override
  $TeamCopyWith<$Res> get visitorTeam;
}

/// @nodoc
class __$$PlayoffSeriesGamesImplCopyWithImpl<$Res>
    extends _$PlayoffSeriesGamesCopyWithImpl<$Res, _$PlayoffSeriesGamesImpl>
    implements _$$PlayoffSeriesGamesImplCopyWith<$Res> {
  __$$PlayoffSeriesGamesImplCopyWithImpl(_$PlayoffSeriesGamesImpl _value,
      $Res Function(_$PlayoffSeriesGamesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? homeTeam = null,
    Object? visitorTeam = null,
    Object? homeTeamWins = null,
    Object? visitorTeamWins = null,
    Object? isFinished = null,
  }) {
    return _then(_$PlayoffSeriesGamesImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlayoffGameItem>,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      visitorTeam: null == visitorTeam
          ? _value.visitorTeam
          : visitorTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      homeTeamWins: null == homeTeamWins
          ? _value.homeTeamWins
          : homeTeamWins // ignore: cast_nullable_to_non_nullable
              as int,
      visitorTeamWins: null == visitorTeamWins
          ? _value.visitorTeamWins
          : visitorTeamWins // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayoffSeriesGamesImpl implements _PlayoffSeriesGames {
  const _$PlayoffSeriesGamesImpl(
      {required final List<PlayoffGameItem> items,
      required this.homeTeam,
      required this.visitorTeam,
      required this.homeTeamWins,
      required this.visitorTeamWins,
      required this.isFinished})
      : _items = items;

  final List<PlayoffGameItem> _items;
  @override
  List<PlayoffGameItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Team homeTeam;
  @override
  final Team visitorTeam;
  @override
  final int homeTeamWins;
  @override
  final int visitorTeamWins;
  @override
  final bool isFinished;

  @override
  String toString() {
    return 'PlayoffSeriesGames(items: $items, homeTeam: $homeTeam, visitorTeam: $visitorTeam, homeTeamWins: $homeTeamWins, visitorTeamWins: $visitorTeamWins, isFinished: $isFinished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayoffSeriesGamesImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.visitorTeam, visitorTeam) ||
                other.visitorTeam == visitorTeam) &&
            (identical(other.homeTeamWins, homeTeamWins) ||
                other.homeTeamWins == homeTeamWins) &&
            (identical(other.visitorTeamWins, visitorTeamWins) ||
                other.visitorTeamWins == visitorTeamWins) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      homeTeam,
      visitorTeam,
      homeTeamWins,
      visitorTeamWins,
      isFinished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayoffSeriesGamesImplCopyWith<_$PlayoffSeriesGamesImpl> get copyWith =>
      __$$PlayoffSeriesGamesImplCopyWithImpl<_$PlayoffSeriesGamesImpl>(
          this, _$identity);
}

abstract class _PlayoffSeriesGames implements PlayoffSeriesGames {
  const factory _PlayoffSeriesGames(
      {required final List<PlayoffGameItem> items,
      required final Team homeTeam,
      required final Team visitorTeam,
      required final int homeTeamWins,
      required final int visitorTeamWins,
      required final bool isFinished}) = _$PlayoffSeriesGamesImpl;

  @override
  List<PlayoffGameItem> get items;
  @override
  Team get homeTeam;
  @override
  Team get visitorTeam;
  @override
  int get homeTeamWins;
  @override
  int get visitorTeamWins;
  @override
  bool get isFinished;
  @override
  @JsonKey(ignore: true)
  _$$PlayoffSeriesGamesImplCopyWith<_$PlayoffSeriesGamesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayoffGameItem {
  GameItem get item => throw _privateConstructorUsedError;
  int get gameNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayoffGameItemCopyWith<PlayoffGameItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayoffGameItemCopyWith<$Res> {
  factory $PlayoffGameItemCopyWith(
          PlayoffGameItem value, $Res Function(PlayoffGameItem) then) =
      _$PlayoffGameItemCopyWithImpl<$Res, PlayoffGameItem>;
  @useResult
  $Res call({GameItem item, int gameNumber});

  $GameItemCopyWith<$Res> get item;
}

/// @nodoc
class _$PlayoffGameItemCopyWithImpl<$Res, $Val extends PlayoffGameItem>
    implements $PlayoffGameItemCopyWith<$Res> {
  _$PlayoffGameItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? gameNumber = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GameItem,
      gameNumber: null == gameNumber
          ? _value.gameNumber
          : gameNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameItemCopyWith<$Res> get item {
    return $GameItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayoffGameItemImplCopyWith<$Res>
    implements $PlayoffGameItemCopyWith<$Res> {
  factory _$$PlayoffGameItemImplCopyWith(_$PlayoffGameItemImpl value,
          $Res Function(_$PlayoffGameItemImpl) then) =
      __$$PlayoffGameItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameItem item, int gameNumber});

  @override
  $GameItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$PlayoffGameItemImplCopyWithImpl<$Res>
    extends _$PlayoffGameItemCopyWithImpl<$Res, _$PlayoffGameItemImpl>
    implements _$$PlayoffGameItemImplCopyWith<$Res> {
  __$$PlayoffGameItemImplCopyWithImpl(
      _$PlayoffGameItemImpl _value, $Res Function(_$PlayoffGameItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? gameNumber = null,
  }) {
    return _then(_$PlayoffGameItemImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as GameItem,
      gameNumber: null == gameNumber
          ? _value.gameNumber
          : gameNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayoffGameItemImpl implements _PlayoffGameItem {
  const _$PlayoffGameItemImpl({required this.item, required this.gameNumber});

  @override
  final GameItem item;
  @override
  final int gameNumber;

  @override
  String toString() {
    return 'PlayoffGameItem(item: $item, gameNumber: $gameNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayoffGameItemImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.gameNumber, gameNumber) ||
                other.gameNumber == gameNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, gameNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayoffGameItemImplCopyWith<_$PlayoffGameItemImpl> get copyWith =>
      __$$PlayoffGameItemImplCopyWithImpl<_$PlayoffGameItemImpl>(
          this, _$identity);
}

abstract class _PlayoffGameItem implements PlayoffGameItem {
  const factory _PlayoffGameItem(
      {required final GameItem item,
      required final int gameNumber}) = _$PlayoffGameItemImpl;

  @override
  GameItem get item;
  @override
  int get gameNumber;
  @override
  @JsonKey(ignore: true)
  _$$PlayoffGameItemImplCopyWith<_$PlayoffGameItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
