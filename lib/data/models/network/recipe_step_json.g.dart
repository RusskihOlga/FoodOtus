// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_step_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeStepJson _$$_RecipeStepJsonFromJson(Map<String, dynamic> json) =>
    _$_RecipeStepJson(
      id: json['id'] as int,
      number: json['number'] as int,
      recipe: RecipeJson.fromJson(json['recipe'] as Map<String, dynamic>),
      step: StepJson.fromJson(json['step'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecipeStepJsonToJson(_$_RecipeStepJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'recipe': instance.recipe,
      'step': instance.step,
    };
