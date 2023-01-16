// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientJson _$$_IngredientJsonFromJson(Map<String, dynamic> json) =>
    _$_IngredientJson(
      id: json['id'] as int,
      name: json['name'] as String?,
      caloriesForUnit: (json['caloriesForUnit'] as num?)?.toDouble(),
      measureUnit: json['measureUnit'] == null
          ? null
          : MeasureUnitJson.fromJson(
              json['measureUnit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IngredientJsonToJson(_$_IngredientJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'caloriesForUnit': instance.caloriesForUnit,
      'measureUnit': instance.measureUnit,
    };
