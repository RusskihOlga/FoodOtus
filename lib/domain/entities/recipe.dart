import 'package:food_otus/data/models/db/recipe_db.dart';
import 'package:food_otus/domain/entities/ingredient.dart';
import 'package:food_otus/domain/entities/step_recipe.dart';
import 'package:collection/collection.dart';

class Recipe {
  final int id;
  final String name;
  final int duration;
  final String photo;
  final int? favorite;
  final List<StepRecipe> steps;
  final List<Ingredient> ingredients;

  const Recipe({
    required this.id,
    required this.name,
    required this.duration,
    required this.photo,
    required this.steps,
    required this.ingredients,
    required this.favorite,
  });

  factory Recipe.fromDB(RecipeDB data) => Recipe(
        id: data.id,
        name: data.name,
        duration: data.duration,
        favorite: data.favorite,
        photo: data.photo,
        steps: data.steps
            .map((e) => StepRecipe.fromDB(e))
            .sorted((a, b) => a.number.compareTo(b.number))
            .toList(),
        ingredients: data.ingredients.map((e) => Ingredient.fromDB(e)).toList(),
      );
}
