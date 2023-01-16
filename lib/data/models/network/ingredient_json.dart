import 'package:food_otus/data/models/network/measure_unit_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_json.freezed.dart';
part 'ingredient_json.g.dart';

@freezed
class IngredientJson with _$IngredientJson {
  const factory IngredientJson({
    required int id,
    required String? name,
    required double? caloriesForUnit,
    required MeasureUnitJson? measureUnit,
  }) = _IngredientJson;

  factory IngredientJson.fromJson(Map<String, Object?> json) => _$IngredientJsonFromJson(json);
}