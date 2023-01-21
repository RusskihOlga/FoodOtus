import 'package:food_otus/core/database.dart';
import 'package:food_otus/data/models/db/detector_db.dart';
import 'package:food_otus/data/models/db/ingredient_db.dart';
import 'package:food_otus/data/models/db/measure_unit_db.dart';
import 'package:food_otus/data/models/db/photo_db.dart';
import 'package:food_otus/data/models/db/recipe_db.dart';
import 'package:food_otus/data/models/db/step_db.dart';
import 'package:food_otus/data/models/network/ingredient_json.dart';
import 'package:food_otus/data/models/network/measure_unit_json.dart';
import 'package:food_otus/data/models/network/recipe_ingridient.dart';
import 'package:food_otus/data/models/network/recipe_json.dart';
import 'package:food_otus/data/models/network/recipe_step_json.dart';
import 'package:food_otus/data/models/network/step_json.dart';
import 'package:food_otus/domain/entities/detector_data.dart';
import 'package:hive/hive.dart';

class RecipeLocalSource {
  final Database database;

  RecipeLocalSource({required this.database});

  Future<RecipeDB> addRecipe(RecipeJson recipe, int? favorite) async {
    var recipeDB = database.recipeBox.get(recipe.id);
    if (recipeDB == null) {
      recipeDB = RecipeDB(
        id: recipe.id,
        name: recipe.name!,
        duration: recipe.duration!,
        photo: recipe.photo!,
        favorite: favorite,
        steps: HiveList(database.stepBox),
        ingredients: HiveList(database.ingredientBox),
        photos: HiveList(database.photoBox),
      );
      await database.recipeBox.put(recipe.id, recipeDB);
    } else {
      recipeDB.name = recipe.name!;
      recipeDB.duration = recipe.duration!;
      recipeDB.photo = recipe.photo!;
      recipeDB.favorite = favorite;
      recipeDB.save();
    }
    return recipeDB;
  }

  List<RecipeDB> getRecipes({bool favorite = false}) {
    var data = database.recipeBox.values.toList();
    if (favorite) {
      data = data.where((element) => element.favorite != null).toList();
    }
    return data;
  }

  void updateFavorite(int id, int? favorite) {
    var recipe = database.recipeBox.get(id);
    if (recipe != null) {
      recipe.favorite = favorite;
      recipe.save();
    }
  }

  RecipeDB? getRecipe(int id) {
    return database.recipeBox.get(id);
  }

  List<PhotoDB> getPhotos(int id) {
    var recipe = database.recipeBox.get(id);
    return recipe!.photos;
  }

  Future<IngredientDB> addIngredient(
      IngredientJson ingredient,
      RecipeIngredientJson recipeIngredient,
      ) async {
    var ingredientDB = database.ingredientBox.get(ingredient.id);
    if (ingredientDB == null) {
      ingredientDB = IngredientDB(
        id: ingredient.id,
        name: ingredient.name!,
        count: recipeIngredient.count,
        measureUnit: getMeasureUnit(ingredient.measureUnit!.id),
      );
      await database.ingredientBox.add(ingredientDB);
    } else {
      ingredientDB.name = ingredient.name!;
      ingredientDB.count = recipeIngredient.count;
      ingredientDB.measureUnit = getMeasureUnit(ingredient.measureUnit!.id);
    }
    return ingredientDB;
  }

  Future<void> addMeasureUnit(MeasureUnitJson measureUnit) async {
    var measureUnitDB = database.measureUnitBox.get(measureUnit.id);
    if (measureUnitDB == null) {
      measureUnitDB = MeasureUnitDB(
        id: measureUnit.id,
        one: measureUnit.one!,
        few: measureUnit.few!,
        many: measureUnit.many!,
      );
      await database.measureUnitBox.put(measureUnit.id, measureUnitDB);
    } else {
      measureUnitDB.one = measureUnit.one!;
      measureUnitDB.few = measureUnit.few!;
      measureUnitDB.many = measureUnit.many!;
      measureUnitDB.save();
    }
  }

  Future<StepDB> addStep(StepJson step, RecipeStepJson recipeStep) async {
    var stepDB = database.stepBox.get(step.id);
    if (stepDB == null) {
      stepDB = StepDB(
        id: step.id,
        number: recipeStep.number,
        name: step.name!,
        duration: step.duration!,
      );
      await database.stepBox.put(step.id, stepDB);
    } else {
      stepDB.name = step.name!;
      stepDB.number = recipeStep.number;
      stepDB.duration = step.duration!;
      stepDB.save();
    }

    return stepDB;
  }

  MeasureUnitDB getMeasureUnit(int id) {
    return database.measureUnitBox.get(id)!;
  }

  Future<PhotoDB> addPhoto(String path, List<DetectorDB> detectors) async {
    var photo = PhotoDB(
      path: path,
      detectors: HiveList(database.detectorBox),
    );
    photo.detectors.addAll(detectors);
    await database.photoBox.add(photo);
    return photo;
  }

  Future<DetectorDB> addDetector(DetectorData data) async {
    var detector = DetectorDB(
      detectedClass: data.detectedClass,
      rect: {
        "w": data.rect.w,
        "h": data.rect.h,
        "x": data.rect.x,
        "y": data.rect.y,
      },
      confidence: data.confidenceInClass,
    );
    await database.detectorBox.add(detector);
    return detector;
  }

  List<DetectorDB> getDetectors(String path) {
    var photo =
    database.photoBox.values.firstWhere((element) => element.path == path);
    return photo.detectors;
  }
}
