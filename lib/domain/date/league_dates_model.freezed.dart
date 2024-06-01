// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_dates_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeagueDatesModel {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  String get formattedDate => throw _privateConstructorUsedError;
  DateTime get minDate => throw _privateConstructorUsedError;
  DateTime get maxDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeagueDatesModelCopyWith<LeagueDatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueDatesModelCopyWith<$Res> {
  factory $LeagueDatesModelCopyWith(
          LeagueDatesModel value, $Res Function(LeagueDatesModel) then) =
      _$LeagueDatesModelCopyWithImpl<$Res, LeagueDatesModel>;
  @useResult
  $Res call(
      {DateTime selectedDate,
      String formattedDate,
      DateTime minDate,
      DateTime maxDate});
}

/// @nodoc
class _$LeagueDatesModelCopyWithImpl<$Res, $Val extends LeagueDatesModel>
    implements $LeagueDatesModelCopyWith<$Res> {
  _$LeagueDatesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? formattedDate = null,
    Object? minDate = null,
    Object? maxDate = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      minDate: null == minDate
          ? _value.minDate
          : minDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxDate: null == maxDate
          ? _value.maxDate
          : maxDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeagueDatesModelImplCopyWith<$Res>
    implements $LeagueDatesModelCopyWith<$Res> {
  factory _$$LeagueDatesModelImplCopyWith(_$LeagueDatesModelImpl value,
          $Res Function(_$LeagueDatesModelImpl) then) =
      __$$LeagueDatesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectedDate,
      String formattedDate,
      DateTime minDate,
      DateTime maxDate});
}

/// @nodoc
class __$$LeagueDatesModelImplCopyWithImpl<$Res>
    extends _$LeagueDatesModelCopyWithImpl<$Res, _$LeagueDatesModelImpl>
    implements _$$LeagueDatesModelImplCopyWith<$Res> {
  __$$LeagueDatesModelImplCopyWithImpl(_$LeagueDatesModelImpl _value,
      $Res Function(_$LeagueDatesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? formattedDate = null,
    Object? minDate = null,
    Object? maxDate = null,
  }) {
    return _then(_$LeagueDatesModelImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      minDate: null == minDate
          ? _value.minDate
          : minDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxDate: null == maxDate
          ? _value.maxDate
          : maxDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LeagueDatesModelImpl implements _LeagueDatesModel {
  const _$LeagueDatesModelImpl(
      {required this.selectedDate,
      required this.formattedDate,
      required this.minDate,
      required this.maxDate});

  @override
  final DateTime selectedDate;
  @override
  final String formattedDate;
  @override
  final DateTime minDate;
  @override
  final DateTime maxDate;

  @override
  String toString() {
    return 'LeagueDatesModel(selectedDate: $selectedDate, formattedDate: $formattedDate, minDate: $minDate, maxDate: $maxDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueDatesModelImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.minDate, minDate) || other.minDate == minDate) &&
            (identical(other.maxDate, maxDate) || other.maxDate == maxDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedDate, formattedDate, minDate, maxDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueDatesModelImplCopyWith<_$LeagueDatesModelImpl> get copyWith =>
      __$$LeagueDatesModelImplCopyWithImpl<_$LeagueDatesModelImpl>(
          this, _$identity);
}

abstract class _LeagueDatesModel implements LeagueDatesModel {
  const factory _LeagueDatesModel(
      {required final DateTime selectedDate,
      required final String formattedDate,
      required final DateTime minDate,
      required final DateTime maxDate}) = _$LeagueDatesModelImpl;

  @override
  DateTime get selectedDate;
  @override
  String get formattedDate;
  @override
  DateTime get minDate;
  @override
  DateTime get maxDate;
  @override
  @JsonKey(ignore: true)
  _$$LeagueDatesModelImplCopyWith<_$LeagueDatesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
