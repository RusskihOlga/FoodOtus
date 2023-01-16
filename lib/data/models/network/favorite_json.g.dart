// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteJson _$$_FavoriteJsonFromJson(Map<String, dynamic> json) =>
    _$_FavoriteJson(
      id: json['id'] as int,
      user: UserJson.fromJson(json['user'] as Map<String, dynamic>),
      recipe: RecipeJson.fromJson(json['recipe'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavoriteJsonToJson(_$_FavoriteJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'recipe': instance.recipe,
    };
