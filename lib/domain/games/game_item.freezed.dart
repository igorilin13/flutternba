// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameItem {
  Game get game => throw _privateConstructorUsedError;
  String get formattedDate => throw _privateConstructorUsedError;
  TeamStandings? get homeTeamStandings => throw _privateConstructorUsedError;
  TeamStandings? get visitorTeamStandings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameItemCopyWith<GameItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameItemCopyWith<$Res> {
  factory $GameItemCopyWith(GameItem value, $Res Function(GameItem) then) =
      _$GameItemCopyWithImpl<$Res, GameItem>;
  @useResult
  $Res call(
      {Game game,
      String formattedDate,
      TeamStandings? homeTeamStandings,
      TeamStandings? visitorTeamStandings});

  $GameCopyWith<$Res> get game;
  $TeamStandingsCopyWith<$Res>? get homeTeamStandings;
  $TeamStandingsCopyWith<$Res>? get visitorTeamStandings;
}

/// @nodoc
class _$GameItemCopyWithImpl<$Res, $Val extends GameItem>
    implements $GameItemCopyWith<$Res> {
  _$GameItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? formattedDate = null,
    Object? homeTeamStandings = freezed,
    Object? visitorTeamStandings = freezed,
  }) {
    return _then(_value.copyWith(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamStandings: freezed == homeTeamStandings
          ? _value.homeTeamStandings
          : homeTeamStandings // ignore: cast_nullable_to_non_nullable
              as TeamStandings?,
      visitorTeamStandings: freezed == visitorTeamStandings
          ? _value.visitorTeamStandings
          : visitorTeamStandings // ignore: cast_nullable_to_non_nullable
              as TeamStandings?,
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
  $TeamStandingsCopyWith<$Res>? get homeTeamStandings {
    if (_value.homeTeamStandings == null) {
      return null;
    }

    return $TeamStandingsCopyWith<$Res>(_value.homeTeamStandings!, (value) {
      return _then(_value.copyWith(homeTeamStandings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamStandingsCopyWith<$Res>? get visitorTeamStandings {
    if (_value.visitorTeamStandings == null) {
      return null;
    }

    return $TeamStandingsCopyWith<$Res>(_value.visitorTeamStandings!, (value) {
      return _then(_value.copyWith(visitorTeamStandings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameItemImplCopyWith<$Res>
    implements $GameItemCopyWith<$Res> {
  factory _$$GameItemImplCopyWith(
          _$GameItemImpl value, $Res Function(_$GameItemImpl) then) =
      __$$GameItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Game game,
      String formattedDate,
      TeamStandings? homeTeamStandings,
      TeamStandings? visitorTeamStandings});

  @override
  $GameCopyWith<$Res> get game;
  @override
  $TeamStandingsCopyWith<$Res>? get homeTeamStandings;
  @override
  $TeamStandingsCopyWith<$Res>? get visitorTeamStandings;
}

/// @nodoc
class __$$GameItemImplCopyWithImpl<$Res>
    extends _$GameItemCopyWithImpl<$Res, _$GameItemImpl>
    implements _$$GameItemImplCopyWith<$Res> {
  __$$GameItemImplCopyWithImpl(
      _$GameItemImpl _value, $Res Function(_$GameItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? formattedDate = null,
    Object? homeTeamStandings = freezed,
    Object? visitorTeamStandings = freezed,
  }) {
    return _then(_$GameItemImpl(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamStandings: freezed == homeTeamStandings
          ? _value.homeTeamStandings
          : homeTeamStandings // ignore: cast_nullable_to_non_nullable
              as TeamStandings?,
      visitorTeamStandings: freezed == visitorTeamStandings
          ? _value.visitorTeamStandings
          : visitorTeamStandings // ignore: cast_nullable_to_non_nullable
              as TeamStandings?,
    ));
  }
}

/// @nodoc

class _$GameItemImpl implements _GameItem {
  const _$GameItemImpl(
      {required this.game,
      required this.formattedDate,
      required this.homeTeamStandings,
      required this.visitorTeamStandings});

  @override
  final Game game;
  @override
  final String formattedDate;
  @override
  final TeamStandings? homeTeamStandings;
  @override
  final TeamStandings? visitorTeamStandings;

  @override
  String toString() {
    return 'GameItem(game: $game, formattedDate: $formattedDate, homeTeamStandings: $homeTeamStandings, visitorTeamStandings: $visitorTeamStandings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameItemImpl &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.homeTeamStandings, homeTeamStandings) ||
                other.homeTeamStandings == homeTeamStandings) &&
            (identical(other.visitorTeamStandings, visitorTeamStandings) ||
                other.visitorTeamStandings == visitorTeamStandings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game, formattedDate,
      homeTeamStandings, visitorTeamStandings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameItemImplCopyWith<_$GameItemImpl> get copyWith =>
      __$$GameItemImplCopyWithImpl<_$GameItemImpl>(this, _$identity);
}

abstract class _GameItem implements GameItem {
  const factory _GameItem(
      {required final Game game,
      required final String formattedDate,
      required final TeamStandings? homeTeamStandings,
      required final TeamStandings? visitorTeamStandings}) = _$GameItemImpl;

  @override
  Game get game;
  @override
  String get formattedDate;
  @override
  TeamStandings? get homeTeamStandings;
  @override
  TeamStandings? get visitorTeamStandings;
  @override
  @JsonKey(ignore: true)
  _$$GameItemImplCopyWith<_$GameItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
