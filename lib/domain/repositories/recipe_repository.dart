import 'package:food_otus/data/data_sources/recipe_local_source.dart';
import 'package:food_otus/data/data_sources/recipe_remote_source.dart';
import 'package:food_otus/data/models/db/detector_db.dart';
import 'package:food_otus/domain/entities/detector_data.dart';
import 'package:food_otus/domain/entities/photo.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:collection/collection.dart';
import 'package:food_otus/domain/entities/user.dart';

class RecipeRepository {
  final RecipeRemoteSource remoteSource;
  final RecipeLocalSource localSource;

  RecipeRepository({
    required this.remoteSource,
    required this.localSource,
  });

  Future<List<Recipe>> getRecipes(User? user) async {
    try {
      var measureUnits = await remoteSource.getMeasureUnits();
      for (var item in measureUnits) {
        await localSource.addMeasureUnit(item);
      }

      var recipes = await remoteSource.getRecipes();
      var ingredients = await remoteSource.getIngredients();
      var recipeIngredients = await remoteSource.getRecipeIngredients();
      var steps = await remoteSource.getSteps();
      var stepsLink = await remoteSource.getStepsLink();
      var favorites = await remoteSource.getFavorites();
      for (var item in recipes) {
        var favorite = favorites
            .firstWhereOrNull((element) => element.recipe.id == item.id);
        if (favorite?.user.id != user?.id) {
          favorite = null;
        }
        var recipe = await localSource.addRecipe(item, favorite?.id);

        var recipesIngredient =
            recipeIngredients.where((element) => element.recipe.id == item.id);
        for (var recipeIngredient in recipesIngredient) {
          var ingredient = ingredients.firstWhere(
            (element) => element.id == recipeIngredient.ingredient.id,
          );
          var ingredientDB = await localSource.addIngredient(
            ingredient,
            recipeIngredient,
          );
          recipe.ingredients.add(ingredientDB);
        }

        var recipesStep =
            stepsLink.where((element) => element.recipe.id == item.id);
        for (var recipeStep in recipesStep) {
          var step = steps.firstWhere(
            (element) => element.id == recipeStep.step.id,
          );
          var stepDB = await localSource.addStep(
            step,
            recipeStep,
          );
          recipe.steps.add(stepDB);
        }
      }
    } catch (_) {}
    List<Recipe> result = [];
    var recipesDB = localSource.getRecipes();
    for (var item in recipesDB) {
      result.add(Recipe.fromDB(item));
    }
    return result;
  }

  List<Recipe> getFavorites() {
    List<Recipe> result = [];
    var recipesDB = localSource.getRecipes(favorite: true);
    for (var item in recipesDB) {
      result.add(Recipe.fromDB(item));
    }
    return result;
  }

  Future<void> addFavorite(int id, int user) async {
    var favorite = await remoteSource.addFavorite(id, user);
    localSource.updateFavorite(id, favorite.id);
  }

  Future<void> removeFavorite(int id) async {
    var recipe = localSource.getRecipe(id);
    await remoteSource.removeFavorite(recipe!.favorite!);
    localSource.updateFavorite(id, null);
  }

  List<Photo> getPhoto(int recipe) {
    var photoDB = localSource.getPhotos(recipe);
    return photoDB.map((e) => Photo.fromDB(e)).toList();
  }

  Recipe getRecipe(int id) {
    var recipesDB = localSource.getRecipe(id);
    return Recipe.fromDB(recipesDB!);
  }

  Future<void> savePhoto(int recipe, String path, List<dynamic> data) async {
    var recipeDB = localSource.getRecipe(recipe)!;
    List<DetectorDB> detectors = [];
    for (var item in data) {
      var detector = await localSource.addDetector(item);
      detectors.add(detector);
    }
    var photo = await localSource.addPhoto(path, detectors);
    recipeDB.photos.add(photo);
    await recipeDB.save();
  }

  List<DetectorData> getDetectors(String path) {
    var detectors = localSource.getDetectors(path);
    return detectors.map((e) => DetectorData.fromDB(e)).toList();
  }
}
