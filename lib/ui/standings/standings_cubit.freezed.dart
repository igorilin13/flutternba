// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StandingsState {
  StandingsType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StandingsType type) loading,
    required TResult Function(StandingsType type) hideScoresOn,
    required TResult Function(StandingsType type) error,
    required TResult Function(StandingsType type,
            List<StandingsCollection> collections, int? favoriteTeamId)
        display,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StandingsType type)? loading,
    TResult? Function(StandingsType type)? hideScoresOn,
    TResult? Function(StandingsType type)? error,
    TResult? Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StandingsType type)? loading,
    TResult Function(StandingsType type)? hideScoresOn,
    TResult Function(StandingsType type)? error,
    TResult Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayState value) display,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StandingsStateCopyWith<StandingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsStateCopyWith<$Res> {
  factory $StandingsStateCopyWith(
          StandingsState value, $Res Function(StandingsState) then) =
      _$StandingsStateCopyWithImpl<$Res, StandingsState>;
  @useResult
  $Res call({StandingsType type});
}

/// @nodoc
class _$StandingsStateCopyWithImpl<$Res, $Val extends StandingsState>
    implements $StandingsStateCopyWith<$Res> {
  _$StandingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StandingsType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res>
    implements $StandingsStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StandingsType type});
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$StandingsStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$LoadingStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StandingsType,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl({required this.type});

  @override
  final StandingsType type;

  @override
  String toString() {
    return 'StandingsState.loading(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StandingsType type) loading,
    required TResult Function(StandingsType type) hideScoresOn,
    required TResult Function(StandingsType type) error,
    required TResult Function(StandingsType type,
            List<StandingsCollection> collections, int? favoriteTeamId)
        display,
  }) {
    return loading(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StandingsType type)? loading,
    TResult? Function(StandingsType type)? hideScoresOn,
    TResult? Function(StandingsType type)? error,
    TResult? Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
  }) {
    return loading?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StandingsType type)? loading,
    TResult Function(StandingsType type)? hideScoresOn,
    TResult Function(StandingsType type)? error,
    TResult Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayState value) display,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements StandingsState {
  const factory LoadingState({required final StandingsType type}) =
      _$LoadingStateImpl;

  @override
  StandingsType get type;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideScoresOnStateImplCopyWith<$Res>
    implements $StandingsStateCopyWith<$Res> {
  factory _$$HideScoresOnStateImplCopyWith(_$HideScoresOnStateImpl value,
          $Res Function(_$HideScoresOnStateImpl) then) =
      __$$HideScoresOnStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StandingsType type});
}

/// @nodoc
class __$$HideScoresOnStateImplCopyWithImpl<$Res>
    extends _$StandingsStateCopyWithImpl<$Res, _$HideScoresOnStateImpl>
    implements _$$HideScoresOnStateImplCopyWith<$Res> {
  __$$HideScoresOnStateImplCopyWithImpl(_$HideScoresOnStateImpl _value,
      $Res Function(_$HideScoresOnStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$HideScoresOnStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StandingsType,
    ));
  }
}

/// @nodoc

class _$HideScoresOnStateImpl implements HideScoresOnState {
  const _$HideScoresOnStateImpl({required this.type});

  @override
  final StandingsType type;

  @override
  String toString() {
    return 'StandingsState.hideScoresOn(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HideScoresOnStateImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HideScoresOnStateImplCopyWith<_$HideScoresOnStateImpl> get copyWith =>
      __$$HideScoresOnStateImplCopyWithImpl<_$HideScoresOnStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StandingsType type) loading,
    required TResult Function(StandingsType type) hideScoresOn,
    required TResult Function(StandingsType type) error,
    required TResult Function(StandingsType type,
            List<StandingsCollection> collections, int? favoriteTeamId)
        display,
  }) {
    return hideScoresOn(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StandingsType type)? loading,
    TResult? Function(StandingsType type)? hideScoresOn,
    TResult? Function(StandingsType type)? error,
    TResult? Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
  }) {
    return hideScoresOn?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StandingsType type)? loading,
    TResult Function(StandingsType type)? hideScoresOn,
    TResult Function(StandingsType type)? error,
    TResult Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
    required TResult orElse(),
  }) {
    if (hideScoresOn != null) {
      return hideScoresOn(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayState value) display,
  }) {
    return hideScoresOn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) {
    return hideScoresOn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) {
    if (hideScoresOn != null) {
      return hideScoresOn(this);
    }
    return orElse();
  }
}

abstract class HideScoresOnState implements StandingsState {
  const factory HideScoresOnState({required final StandingsType type}) =
      _$HideScoresOnStateImpl;

  @override
  StandingsType get type;
  @override
  @JsonKey(ignore: true)
  _$$HideScoresOnStateImplCopyWith<_$HideScoresOnStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res>
    implements $StandingsStateCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StandingsType type});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$StandingsStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ErrorStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StandingsType,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl({required this.type});

  @override
  final StandingsType type;

  @override
  String toString() {
    return 'StandingsState.error(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StandingsType type) loading,
    required TResult Function(StandingsType type) hideScoresOn,
    required TResult Function(StandingsType type) error,
    required TResult Function(StandingsType type,
            List<StandingsCollection> collections, int? favoriteTeamId)
        display,
  }) {
    return error(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StandingsType type)? loading,
    TResult? Function(StandingsType type)? hideScoresOn,
    TResult? Function(StandingsType type)? error,
    TResult? Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
  }) {
    return error?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StandingsType type)? loading,
    TResult Function(StandingsType type)? hideScoresOn,
    TResult Function(StandingsType type)? error,
    TResult Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayState value) display,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements StandingsState {
  const factory ErrorState({required final StandingsType type}) =
      _$ErrorStateImpl;

  @override
  StandingsType get type;
  @override
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayStateImplCopyWith<$Res>
    implements $StandingsStateCopyWith<$Res> {
  factory _$$DisplayStateImplCopyWith(
          _$DisplayStateImpl value, $Res Function(_$DisplayStateImpl) then) =
      __$$DisplayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StandingsType type,
      List<StandingsCollection> collections,
      int? favoriteTeamId});
}

/// @nodoc
class __$$DisplayStateImplCopyWithImpl<$Res>
    extends _$StandingsStateCopyWithImpl<$Res, _$DisplayStateImpl>
    implements _$$DisplayStateImplCopyWith<$Res> {
  __$$DisplayStateImplCopyWithImpl(
      _$DisplayStateImpl _value, $Res Function(_$DisplayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? collections = null,
    Object? favoriteTeamId = freezed,
  }) {
    return _then(_$DisplayStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StandingsType,
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<StandingsCollection>,
      favoriteTeamId: freezed == favoriteTeamId
          ? _value.favoriteTeamId
          : favoriteTeamId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DisplayStateImpl implements DisplayState {
  const _$DisplayStateImpl(
      {required this.type,
      required final List<StandingsCollection> collections,
      required this.favoriteTeamId})
      : _collections = collections;

  @override
  final StandingsType type;
  final List<StandingsCollection> _collections;
  @override
  List<StandingsCollection> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  final int? favoriteTeamId;

  @override
  String toString() {
    return 'StandingsState.display(type: $type, collections: $collections, favoriteTeamId: $favoriteTeamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayStateImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            (identical(other.favoriteTeamId, favoriteTeamId) ||
                other.favoriteTeamId == favoriteTeamId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_collections), favoriteTeamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayStateImplCopyWith<_$DisplayStateImpl> get copyWith =>
      __$$DisplayStateImplCopyWithImpl<_$DisplayStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StandingsType type) loading,
    required TResult Function(StandingsType type) hideScoresOn,
    required TResult Function(StandingsType type) error,
    required TResult Function(StandingsType type,
            List<StandingsCollection> collections, int? favoriteTeamId)
        display,
  }) {
    return display(type, collections, favoriteTeamId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StandingsType type)? loading,
    TResult? Function(StandingsType type)? hideScoresOn,
    TResult? Function(StandingsType type)? error,
    TResult? Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
  }) {
    return display?.call(type, collections, favoriteTeamId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StandingsType type)? loading,
    TResult Function(StandingsType type)? hideScoresOn,
    TResult Function(StandingsType type)? error,
    TResult Function(StandingsType type, List<StandingsCollection> collections,
            int? favoriteTeamId)?
        display,
    required TResult orElse(),
  }) {
    if (display != null) {
      return display(type, collections, favoriteTeamId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(HideScoresOnState value) hideScoresOn,
    required TResult Function(ErrorState value) error,
    required TResult Function(DisplayState value) display,
  }) {
    return display(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(HideScoresOnState value)? hideScoresOn,
    TResult? Function(ErrorState value)? error,
    TResult? Function(DisplayState value)? display,
  }) {
    return display?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(HideScoresOnState value)? hideScoresOn,
    TResult Function(ErrorState value)? error,
    TResult Function(DisplayState value)? display,
    required TResult orElse(),
  }) {
    if (display != null) {
      return display(this);
    }
    return orElse();
  }
}

abstract class DisplayState implements StandingsState {
  const factory DisplayState(
      {required final StandingsType type,
      required final List<StandingsCollection> collections,
      required final int? favoriteTeamId}) = _$DisplayStateImpl;

  @override
  StandingsType get type;
  List<StandingsCollection> get collections;
  int? get favoriteTeamId;
  @override
  @JsonKey(ignore: true)
  _$$DisplayStateImplCopyWith<_$DisplayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
