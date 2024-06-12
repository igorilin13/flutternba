// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PagedData<T, K> {
  List<T> get items => throw _privateConstructorUsedError;
  K? get nextKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PagedDataCopyWith<T, K, PagedData<T, K>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedDataCopyWith<T, K, $Res> {
  factory $PagedDataCopyWith(
          PagedData<T, K> value, $Res Function(PagedData<T, K>) then) =
      _$PagedDataCopyWithImpl<T, K, $Res, PagedData<T, K>>;
  @useResult
  $Res call({List<T> items, K? nextKey});
}

/// @nodoc
class _$PagedDataCopyWithImpl<T, K, $Res, $Val extends PagedData<T, K>>
    implements $PagedDataCopyWith<T, K, $Res> {
  _$PagedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextKey = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as K?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagedDataImplCopyWith<T, K, $Res>
    implements $PagedDataCopyWith<T, K, $Res> {
  factory _$$PagedDataImplCopyWith(_$PagedDataImpl<T, K> value,
          $Res Function(_$PagedDataImpl<T, K>) then) =
      __$$PagedDataImplCopyWithImpl<T, K, $Res>;
  @override
  @useResult
  $Res call({List<T> items, K? nextKey});
}

/// @nodoc
class __$$PagedDataImplCopyWithImpl<T, K, $Res>
    extends _$PagedDataCopyWithImpl<T, K, $Res, _$PagedDataImpl<T, K>>
    implements _$$PagedDataImplCopyWith<T, K, $Res> {
  __$$PagedDataImplCopyWithImpl(
      _$PagedDataImpl<T, K> _value, $Res Function(_$PagedDataImpl<T, K>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextKey = freezed,
  }) {
    return _then(_$PagedDataImpl<T, K>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as K?,
    ));
  }
}

/// @nodoc

class _$PagedDataImpl<T, K> implements _PagedData<T, K> {
  const _$PagedDataImpl({required final List<T> items, required this.nextKey})
      : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final K? nextKey;

  @override
  String toString() {
    return 'PagedData<$T, $K>(items: $items, nextKey: $nextKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedDataImpl<T, K> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.nextKey, nextKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(nextKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedDataImplCopyWith<T, K, _$PagedDataImpl<T, K>> get copyWith =>
      __$$PagedDataImplCopyWithImpl<T, K, _$PagedDataImpl<T, K>>(
          this, _$identity);
}

abstract class _PagedData<T, K> implements PagedData<T, K> {
  const factory _PagedData(
      {required final List<T> items,
      required final K? nextKey}) = _$PagedDataImpl<T, K>;

  @override
  List<T> get items;
  @override
  K? get nextKey;
  @override
  @JsonKey(ignore: true)
  _$$PagedDataImplCopyWith<T, K, _$PagedDataImpl<T, K>> get copyWith =>
      throw _privateConstructorUsedError;
}
