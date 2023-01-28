// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientJson _$IngredientJsonFromJson(Map<String, dynamic> json) {
  return _IngredientJson.fromJson(json);
}

/// @nodoc
mixin _$IngredientJson {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get caloriesForUnit => throw _privateConstructorUsedError;
  MeasureUnitJson? get measureUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientJsonCopyWith<IngredientJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientJsonCopyWith<$Res> {
  factory $IngredientJsonCopyWith(
          IngredientJson value, $Res Function(IngredientJson) then) =
      _$IngredientJsonCopyWithImpl<$Res, IngredientJson>;
  @useResult
  $Res call(
      {int id,
      String? name,
      double? caloriesForUnit,
      MeasureUnitJson? measureUnit});

  $MeasureUnitJsonCopyWith<$Res>? get measureUnit;
}

/// @nodoc
class _$IngredientJsonCopyWithImpl<$Res, $Val extends IngredientJson>
    implements $IngredientJsonCopyWith<$Res> {
  _$IngredientJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? caloriesForUnit = freezed,
    Object? measureUnit = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      caloriesForUnit: freezed == caloriesForUnit
          ? _value.caloriesForUnit
          : caloriesForUnit // ignore: cast_nullable_to_non_nullable
              as double?,
      measureUnit: freezed == measureUnit
          ? _value.measureUnit
          : measureUnit // ignore: cast_nullable_to_non_nullable
              as MeasureUnitJson?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasureUnitJsonCopyWith<$Res>? get measureUnit {
    if (_value.measureUnit == null) {
      return null;
    }

    return $MeasureUnitJsonCopyWith<$Res>(_value.measureUnit!, (value) {
      return _then(_value.copyWith(measureUnit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IngredientJsonCopyWith<$Res>
    implements $IngredientJsonCopyWith<$Res> {
  factory _$$_IngredientJsonCopyWith(
          _$_IngredientJson value, $Res Function(_$_IngredientJson) then) =
      __$$_IngredientJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      double? caloriesForUnit,
      MeasureUnitJson? measureUnit});

  @override
  $MeasureUnitJsonCopyWith<$Res>? get measureUnit;
}

/// @nodoc
class __$$_IngredientJsonCopyWithImpl<$Res>
    extends _$IngredientJsonCopyWithImpl<$Res, _$_IngredientJson>
    implements _$$_IngredientJsonCopyWith<$Res> {
  __$$_IngredientJsonCopyWithImpl(
      _$_IngredientJson _value, $Res Function(_$_IngredientJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? caloriesForUnit = freezed,
    Object? measureUnit = freezed,
  }) {
    return _then(_$_IngredientJson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      caloriesForUnit: freezed == caloriesForUnit
          ? _value.caloriesForUnit
          : caloriesForUnit // ignore: cast_nullable_to_non_nullable
              as double?,
      measureUnit: freezed == measureUnit
          ? _value.measureUnit
          : measureUnit // ignore: cast_nullable_to_non_nullable
              as MeasureUnitJson?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientJson implements _IngredientJson {
  const _$_IngredientJson(
      {required this.id,
      required this.name,
      required this.caloriesForUnit,
      required this.measureUnit});

  factory _$_IngredientJson.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientJsonFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final double? caloriesForUnit;
  @override
  final MeasureUnitJson? measureUnit;

  @override
  String toString() {
    return 'IngredientJson(id: $id, name: $name, caloriesForUnit: $caloriesForUnit, measureUnit: $measureUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientJson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.caloriesForUnit, caloriesForUnit) ||
                other.caloriesForUnit == caloriesForUnit) &&
            (identical(other.measureUnit, measureUnit) ||
                other.measureUnit == measureUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, caloriesForUnit, measureUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientJsonCopyWith<_$_IngredientJson> get copyWith =>
      __$$_IngredientJsonCopyWithImpl<_$_IngredientJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientJsonToJson(
      this,
    );
  }
}

abstract class _IngredientJson implements IngredientJson {
  const factory _IngredientJson(
      {required final int id,
      required final String? name,
      required final double? caloriesForUnit,
      required final MeasureUnitJson? measureUnit}) = _$_IngredientJson;

  factory _IngredientJson.fromJson(Map<String, dynamic> json) =
      _$_IngredientJson.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  double? get caloriesForUnit;
  @override
  MeasureUnitJson? get measureUnit;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientJsonCopyWith<_$_IngredientJson> get copyWith =>
      throw _privateConstructorUsedError;
}
