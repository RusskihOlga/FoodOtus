// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_ingridient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeIngredientJson _$RecipeIngredientJsonFromJson(Map<String, dynamic> json) {
  return _RecipeIngredientJson.fromJson(json);
}

/// @nodoc
mixin _$RecipeIngredientJson {
  int get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  IngredientJson get ingredient => throw _privateConstructorUsedError;
  RecipeJson get recipe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeIngredientJsonCopyWith<RecipeIngredientJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeIngredientJsonCopyWith<$Res> {
  factory $RecipeIngredientJsonCopyWith(RecipeIngredientJson value,
          $Res Function(RecipeIngredientJson) then) =
      _$RecipeIngredientJsonCopyWithImpl<$Res>;
  $Res call({int id, int count, IngredientJson ingredient, RecipeJson recipe});

  $IngredientJsonCopyWith<$Res> get ingredient;
  $RecipeJsonCopyWith<$Res> get recipe;
}

/// @nodoc
class _$RecipeIngredientJsonCopyWithImpl<$Res>
    implements $RecipeIngredientJsonCopyWith<$Res> {
  _$RecipeIngredientJsonCopyWithImpl(this._value, this._then);

  final RecipeIngredientJson _value;
  // ignore: unused_field
  final $Res Function(RecipeIngredientJson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
    Object? ingredient = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      ingredient: ingredient == freezed
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as IngredientJson,
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeJson,
    ));
  }

  @override
  $IngredientJsonCopyWith<$Res> get ingredient {
    return $IngredientJsonCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value));
    });
  }

  @override
  $RecipeJsonCopyWith<$Res> get recipe {
    return $RecipeJsonCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecipeIngredientJsonCopyWith<$Res>
    implements $RecipeIngredientJsonCopyWith<$Res> {
  factory _$$_RecipeIngredientJsonCopyWith(_$_RecipeIngredientJson value,
          $Res Function(_$_RecipeIngredientJson) then) =
      __$$_RecipeIngredientJsonCopyWithImpl<$Res>;
  @override
  $Res call({int id, int count, IngredientJson ingredient, RecipeJson recipe});

  @override
  $IngredientJsonCopyWith<$Res> get ingredient;
  @override
  $RecipeJsonCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$_RecipeIngredientJsonCopyWithImpl<$Res>
    extends _$RecipeIngredientJsonCopyWithImpl<$Res>
    implements _$$_RecipeIngredientJsonCopyWith<$Res> {
  __$$_RecipeIngredientJsonCopyWithImpl(_$_RecipeIngredientJson _value,
      $Res Function(_$_RecipeIngredientJson) _then)
      : super(_value, (v) => _then(v as _$_RecipeIngredientJson));

  @override
  _$_RecipeIngredientJson get _value => super._value as _$_RecipeIngredientJson;

  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
    Object? ingredient = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_$_RecipeIngredientJson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      ingredient: ingredient == freezed
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as IngredientJson,
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeJson,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeIngredientJson implements _RecipeIngredientJson {
  const _$_RecipeIngredientJson(
      {required this.id,
      required this.count,
      required this.ingredient,
      required this.recipe});

  factory _$_RecipeIngredientJson.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeIngredientJsonFromJson(json);

  @override
  final int id;
  @override
  final int count;
  @override
  final IngredientJson ingredient;
  @override
  final RecipeJson recipe;

  @override
  String toString() {
    return 'RecipeIngredientJson(id: $id, count: $count, ingredient: $ingredient, recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeIngredientJson &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.ingredient, ingredient) &&
            const DeepCollectionEquality().equals(other.recipe, recipe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(ingredient),
      const DeepCollectionEquality().hash(recipe));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeIngredientJsonCopyWith<_$_RecipeIngredientJson> get copyWith =>
      __$$_RecipeIngredientJsonCopyWithImpl<_$_RecipeIngredientJson>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeIngredientJsonToJson(
      this,
    );
  }
}

abstract class _RecipeIngredientJson implements RecipeIngredientJson {
  const factory _RecipeIngredientJson(
      {required final int id,
      required final int count,
      required final IngredientJson ingredient,
      required final RecipeJson recipe}) = _$_RecipeIngredientJson;

  factory _RecipeIngredientJson.fromJson(Map<String, dynamic> json) =
      _$_RecipeIngredientJson.fromJson;

  @override
  int get id;
  @override
  int get count;
  @override
  IngredientJson get ingredient;
  @override
  RecipeJson get recipe;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeIngredientJsonCopyWith<_$_RecipeIngredientJson> get copyWith =>
      throw _privateConstructorUsedError;
}
