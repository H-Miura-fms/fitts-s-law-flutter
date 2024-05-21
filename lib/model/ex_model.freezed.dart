// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ex_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExModel _$ExModelFromJson(Map<String, dynamic> json) {
  return _ExModel.fromJson(json);
}

/// @nodoc
mixin _$ExModel {
  double get w => throw _privateConstructorUsedError;
  double get d => throw _privateConstructorUsedError;
  int get mt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExModelCopyWith<ExModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExModelCopyWith<$Res> {
  factory $ExModelCopyWith(ExModel value, $Res Function(ExModel) then) =
      _$ExModelCopyWithImpl<$Res, ExModel>;
  @useResult
  $Res call({double w, double d, int mt});
}

/// @nodoc
class _$ExModelCopyWithImpl<$Res, $Val extends ExModel>
    implements $ExModelCopyWith<$Res> {
  _$ExModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? w = null,
    Object? d = null,
    Object? mt = null,
  }) {
    return _then(_value.copyWith(
      w: null == w
          ? _value.w
          : w // ignore: cast_nullable_to_non_nullable
              as double,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as double,
      mt: null == mt
          ? _value.mt
          : mt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExModelImplCopyWith<$Res> implements $ExModelCopyWith<$Res> {
  factory _$$ExModelImplCopyWith(
          _$ExModelImpl value, $Res Function(_$ExModelImpl) then) =
      __$$ExModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double w, double d, int mt});
}

/// @nodoc
class __$$ExModelImplCopyWithImpl<$Res>
    extends _$ExModelCopyWithImpl<$Res, _$ExModelImpl>
    implements _$$ExModelImplCopyWith<$Res> {
  __$$ExModelImplCopyWithImpl(
      _$ExModelImpl _value, $Res Function(_$ExModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? w = null,
    Object? d = null,
    Object? mt = null,
  }) {
    return _then(_$ExModelImpl(
      w: null == w
          ? _value.w
          : w // ignore: cast_nullable_to_non_nullable
              as double,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as double,
      mt: null == mt
          ? _value.mt
          : mt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExModelImpl implements _ExModel {
  const _$ExModelImpl({required this.w, required this.d, required this.mt});

  factory _$ExModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExModelImplFromJson(json);

  @override
  final double w;
  @override
  final double d;
  @override
  final int mt;

  @override
  String toString() {
    return 'ExModel(w: $w, d: $d, mt: $mt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExModelImpl &&
            (identical(other.w, w) || other.w == w) &&
            (identical(other.d, d) || other.d == d) &&
            (identical(other.mt, mt) || other.mt == mt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, w, d, mt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExModelImplCopyWith<_$ExModelImpl> get copyWith =>
      __$$ExModelImplCopyWithImpl<_$ExModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExModelImplToJson(
      this,
    );
  }
}

abstract class _ExModel implements ExModel {
  const factory _ExModel(
      {required final double w,
      required final double d,
      required final int mt}) = _$ExModelImpl;

  factory _ExModel.fromJson(Map<String, dynamic> json) = _$ExModelImpl.fromJson;

  @override
  double get w;
  @override
  double get d;
  @override
  int get mt;
  @override
  @JsonKey(ignore: true)
  _$$ExModelImplCopyWith<_$ExModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
