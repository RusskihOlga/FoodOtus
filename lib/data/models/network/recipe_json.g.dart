// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeJson _$$_RecipeJsonFromJson(Map<String, dynamic> json) =>
    _$_RecipeJson(
      id: json['id'] as int,
      name: json['name'] as String?,
      duration: json['duration'] as int?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_RecipeJsonToJson(_$_RecipeJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'photo': instance.photo,
    };
