// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_ingridient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeIngredientJson _$$_RecipeIngredientJsonFromJson(
        Map<String, dynamic> json) =>
    _$_RecipeIngredientJson(
      id: json['id'] as int,
      count: json['count'] as int,
      ingredient:
          IngredientJson.fromJson(json['ingredient'] as Map<String, dynamic>),
      recipe: RecipeJson.fromJson(json['recipe'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecipeIngredientJsonToJson(
        _$_RecipeIngredientJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'ingredient': instance.ingredient,
      'recipe': instance.recipe,
    };
