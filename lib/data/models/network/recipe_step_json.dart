import 'package:food_otus/data/models/network/recipe_json.dart';
import 'package:food_otus/data/models/network/step_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_step_json.freezed.dart';
part 'recipe_step_json.g.dart';

@freezed
class RecipeStepJson with _$RecipeStepJson{
  const factory RecipeStepJson({
    required int id,
    required int number,
    required RecipeJson recipe,
    required StepJson step,
  }) = _RecipeStepJson;

  factory RecipeStepJson.fromJson(Map<String, Object?> json) => _$RecipeStepJsonFromJson(json);
}