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
      _$MeasureUnitJsonCopyWithImpl<$Res>;
  $Res call({int id, String? one, String? few, String? many});
}

/// @nodoc
class _$MeasureUnitJsonCopyWithImpl<$Res>
    implements $MeasureUnitJsonCopyWith<$Res> {
  _$MeasureUnitJsonCopyWithImpl(this._value, this._then);

  final MeasureUnitJson _value;
  // ignore: unused_field
  final $Res Function(MeasureUnitJson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? one = freezed,
    Object? few = freezed,
    Object? many = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      one: one == freezed
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as String?,
      few: few == freezed
          ? _value.few
          : few // ignore: cast_nullable_to_non_nullable
              as String?,
      many: many == freezed
          ? _value.many
          : many // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MeasureUnitJsonCopyWith<$Res>
    implements $MeasureUnitJsonCopyWith<$Res> {
  factory _$$_MeasureUnitJsonCopyWith(
          _$_MeasureUnitJson value, $Res Function(_$_MeasureUnitJson) then) =
      __$$_MeasureUnitJsonCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? one, String? few, String? many});
}

/// @nodoc
class __$$_MeasureUnitJsonCopyWithImpl<$Res>
    extends _$MeasureUnitJsonCopyWithImpl<$Res>
    implements _$$_MeasureUnitJsonCopyWith<$Res> {
  __$$_MeasureUnitJsonCopyWithImpl(
      _$_MeasureUnitJson _value, $Res Function(_$_MeasureUnitJson) _then)
      : super(_value, (v) => _then(v as _$_MeasureUnitJson));

  @override
  _$_MeasureUnitJson get _value => super._value as _$_MeasureUnitJson;

  @override
  $Res call({
    Object? id = freezed,
    Object? one = freezed,
    Object? few = freezed,
    Object? many = freezed,
  }) {
    return _then(_$_MeasureUnitJson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      one: one == freezed
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as String?,
      few: few == freezed
          ? _value.few
          : few // ignore: cast_nullable_to_non_nullable
              as String?,
      many: many == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.one, one) &&
            const DeepCollectionEquality().equals(other.few, few) &&
            const DeepCollectionEquality().equals(other.many, many));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(one),
      const DeepCollectionEquality().hash(few),
      const DeepCollectionEquality().hash(many));

  @JsonKey(ignore: true)
  @override
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
