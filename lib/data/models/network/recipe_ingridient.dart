import 'package:food_otus/data/models/network/ingredient_json.dart';
import 'package:food_otus/data/models/network/recipe_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_ingridient.freezed.dart';
part 'recipe_ingridient.g.dart';

@freezed
class RecipeIngredientJson with _$RecipeIngredientJson {
  const factory RecipeIngredientJson({
    required int id,
    required int count,
    required IngredientJson ingredient,
    required RecipeJson recipe,
  }) = _RecipeIngredientJson;

  factory RecipeIngredientJson.fromJson(Map<String, Object?> json) => _$RecipeIngredientJsonFromJson(json);
}