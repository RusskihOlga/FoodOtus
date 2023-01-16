import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_json.freezed.dart';
part 'recipe_json.g.dart';

@freezed
class RecipeJson with _$RecipeJson {

  const factory RecipeJson({
    required int id,
    required String? name,
    required int? duration,
    required String? photo,
  }) = _RecipeJson;

  factory RecipeJson.fromJson(Map<String, Object?> json) => _$RecipeJsonFromJson(json);
}


