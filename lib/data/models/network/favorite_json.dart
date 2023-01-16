import 'package:food_otus/data/models/network/recipe_json.dart';
import 'package:food_otus/data/models/network/user_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_json.freezed.dart';
part 'favorite_json.g.dart';

@freezed
class FavoriteJson with _$FavoriteJson {
  const factory FavoriteJson({
    required int id,
    required UserJson user,
    required RecipeJson recipe,
  }) = _FavoriteJson;

  factory FavoriteJson.fromJson(Map<String, Object?> json) => _$FavoriteJsonFromJson(json);
}