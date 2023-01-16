import 'package:food_otus/data/models/db/ingredient_db.dart';
import 'package:food_otus/data/models/db/photo_db.dart';
import 'package:food_otus/data/models/db/step_db.dart';
import 'package:hive/hive.dart';
part 'recipe_db.g.dart';

@HiveType(typeId: 0)
class RecipeDB extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  int duration;
  @HiveField(3)
  String photo;
  @HiveField(4)
  int? favorite;
  @HiveField(5)
  HiveList<StepDB> steps;
  @HiveField(6)
  HiveList<IngredientDB> ingredients;
  @HiveField(7)
  HiveList<PhotoDB> photos;

  RecipeDB({
    required this.id,
    required this.name,
    required this.duration,
    this.favorite,
    required this.photo,
    required this.steps,
    required this.ingredients,
    required this.photos,
  });
}
