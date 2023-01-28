// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'measure_unit_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasureUnitJson _$MeasureUnitJsonFromJson(Map<String, dynamic> json) {
  return _MeasureUnitJson.fromJson(json);
}

/// @nodoc
mixin _$MeasureUnitJson {
  int get id => throw _privateConstructorUsedError;
  String? get one => throw _privateConstructorUsedError;
  String? get few => throw _privateConstructorUsedError;
  String? get many => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureUnitJsonCopyWith<MeasureUnitJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureUnitJsonCopyWith<$Res> {
  factory $MeasureUnitJsonCopyWith(
          MeasureUnitJson value, $Res Function(MeasureUnitJson) then) =
      _$MeasureUnitJsonCopyWithImpl<$Res, MeasureUnitJson>;
  @useResult
  $Res call({int id, String? one, String? few, String? many});
}

/// @nodoc
class _$MeasureUnitJsonCopyWithImpl<$Res, $Val extends MeasureUnitJson>
    implements $MeasureUnitJsonCopyWith<$Res> {
  _$MeasureUnitJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? one = freezed,
    Object? few = freezed,
    Object? many = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      one: freezed == one
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as String?,
      few: freezed == few
          ? _value.few
          : few // ignore: cast_nullable_to_non_nullable
              as String?,
      many: freezed == many
          ? _value.many
          : many // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasureUnitJsonCopyWith<$Res>
    implements $MeasureUnitJsonCopyWith<$Res> {
  factory _$$_MeasureUnitJsonCopyWith(
          _$_MeasureUnitJson value, $Res Function(_$_MeasureUnitJson) then) =
      __$$_MeasureUnitJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? one, String? few, String? many});
}

/// @nodoc
class __$$_MeasureUnitJsonCopyWithImpl<$Res>
    extends _$MeasureUnitJsonCopyWithImpl<$Res, _$_MeasureUnitJson>
    implements _$$_MeasureUnitJsonCopyWith<$Res> {
  __$$_MeasureUnitJsonCopyWithImpl(
      _$_MeasureUnitJson _value, $Res Function(_$_MeasureUnitJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? one = freezed,
    Object? few = freezed,
    Object? many = freezed,
  }) {
    return _then(_$_MeasureUnitJson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      one: freezed == one
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as String?,
      few: freezed == few
          ? _value.few
          : few // ignore: cast_nullable_to_non_nullable
              as String?,
      many: freezed == many
          ? _value.many
          : many // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasureUnitJson implements _MeasureUnitJson {
  const _$_MeasureUnitJson(
      {required this.id,
      required this.one,
      required this.few,
      required this.many});

  factory _$_MeasureUnitJson.fromJson(Map<String, dynamic> json) =>
      _$$_MeasureUnitJsonFromJson(json);

  @override
  final int id;
  @override
  final String? one;
  @override
  final String? few;
  @override
  final String? many;

  @override
  String toString() {
    return 'MeasureUnitJson(id: $id, one: $one, few: $few, many: $many)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasureUnitJson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.one, one) || other.one == one) &&
            (identical(other.few, few) || other.few == few) &&
            (identical(other.many, many) || other.many == many));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, one, few, many);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasureUnitJsonCopyWith<_$_MeasureUnitJson> get copyWith =>
      __$$_MeasureUnitJsonCopyWithImpl<_$_MeasureUnitJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasureUnitJsonToJson(
      this,
    );
  }
}

abstract class _MeasureUnitJson implements MeasureUnitJson {
  const factory _MeasureUnitJson(
      {required final int id,
      required final String? one,
      required final String? few,
      required final String? many}) = _$_MeasureUnitJson;

  factory _MeasureUnitJson.fromJson(Map<String, dynamic> json) =
      _$_MeasureUnitJson.fromJson;

  @override
  int get id;
  @override
  String? get one;
  @override
  String? get few;
  @override
  String? get many;
  @override
  @JsonKey(ignore: true)
  _$$_MeasureUnitJsonCopyWith<_$_MeasureUnitJson> get copyWith =>
      throw _privateConstructorUsedError;
}
