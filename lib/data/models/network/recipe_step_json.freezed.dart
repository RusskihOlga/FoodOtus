// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_step_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeStepJson _$RecipeStepJsonFromJson(Map<String, dynamic> json) {
  return _RecipeStepJson.fromJson(json);
}

/// @nodoc
mixin _$RecipeStepJson {
  int get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  RecipeJson get recipe => throw _privateConstructorUsedError;
  StepJson get step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeStepJsonCopyWith<RecipeStepJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStepJsonCopyWith<$Res> {
  factory $RecipeStepJsonCopyWith(
          RecipeStepJson value, $Res Function(RecipeStepJson) then) =
      _$RecipeStepJsonCopyWithImpl<$Res, RecipeStepJson>;
  @useResult
  $Res call({int id, int number, RecipeJson recipe, StepJson step});

  $RecipeJsonCopyWith<$Res> get recipe;
  $StepJsonCopyWith<$Res> get step;
}

/// @nodoc
class _$RecipeStepJsonCopyWithImpl<$Res, $Val extends RecipeStepJson>
    implements $RecipeStepJsonCopyWith<$Res> {
  _$RecipeStepJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? recipe = null,
    Object? step = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeJson,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as StepJson,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeJsonCopyWith<$Res> get recipe {
    return $RecipeJsonCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StepJsonCopyWith<$Res> get step {
    return $StepJsonCopyWith<$Res>(_value.step, (value) {
      return _then(_value.copyWith(step: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipeStepJsonCopyWith<$Res>
    implements $RecipeStepJsonCopyWith<$Res> {
  factory _$$_RecipeStepJsonCopyWith(
          _$_RecipeStepJson value, $Res Function(_$_RecipeStepJson) then) =
      __$$_RecipeStepJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int number, RecipeJson recipe, StepJson step});

  @override
  $RecipeJsonCopyWith<$Res> get recipe;
  @override
  $StepJsonCopyWith<$Res> get step;
}

/// @nodoc
class __$$_RecipeStepJsonCopyWithImpl<$Res>
    extends _$RecipeStepJsonCopyWithImpl<$Res, _$_RecipeStepJson>
    implements _$$_RecipeStepJsonCopyWith<$Res> {
  __$$_RecipeStepJsonCopyWithImpl(
      _$_RecipeStepJson _value, $Res Function(_$_RecipeStepJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? recipe = null,
    Object? step = null,
  }) {
    return _then(_$_RecipeStepJson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeJson,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as StepJson,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeStepJson implements _RecipeStepJson {
  const _$_RecipeStepJson(
      {required this.id,
      required this.number,
      required this.recipe,
      required this.step});

  factory _$_RecipeStepJson.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeStepJsonFromJson(json);

  @override
  final int id;
  @override
  final int number;
  @override
  final RecipeJson recipe;
  @override
  final StepJson step;

  @override
  String toString() {
    return 'RecipeStepJson(id: $id, number: $number, recipe: $recipe, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeStepJson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.step, step) || other.step == step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, recipe, step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeStepJsonCopyWith<_$_RecipeStepJson> get copyWith =>
      __$$_RecipeStepJsonCopyWithImpl<_$_RecipeStepJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeStepJsonToJson(
      this,
    );
  }
}

abstract class _RecipeStepJson implements RecipeStepJson {
  const factory _RecipeStepJson(
      {required final int id,
      required final int number,
      required final RecipeJson recipe,
      required final StepJson step}) = _$_RecipeStepJson;

  factory _RecipeStepJson.fromJson(Map<String, dynamic> json) =
      _$_RecipeStepJson.fromJson;

  @override
  int get id;
  @override
  int get number;
  @override
  RecipeJson get recipe;
  @override
  StepJson get step;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeStepJsonCopyWith<_$_RecipeStepJson> get copyWith =>
      throw _privateConstructorUsedError;
}
