import 'package:food_otus/data/models/db/detector_db.dart';
import 'package:food_otus/data/models/db/ingredient_db.dart';
import 'package:food_otus/data/models/db/photo_db.dart';
import 'package:food_otus/data/models/db/recipe_db.dart';
import 'package:food_otus/data/models/db/step_db.dart';
import 'package:food_otus/data/models/db/user_db.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../data/models/db/measure_unit_db.dart';

class Database {
  late Box<RecipeDB> recipeBox;
  late Box<IngredientDB> ingredientBox;
  late Box<StepDB> stepBox;
  late Box<MeasureUnitDB> measureUnitBox;
  late Box<PhotoDB> photoBox;
  late Box<DetectorDB> detectorBox;
  late Box<UserDB> userBox;

  Future<void> init() async {
    final appDocument = await getApplicationDocumentsDirectory();
    Hive.init(appDocument.path);
    Hive.registerAdapter(RecipeDBAdapter());
    Hive.registerAdapter(IngredientDBAdapter());
    Hive.registerAdapter(StepDBAdapter());
    Hive.registerAdapter(MeasureUnitDBAdapter());
    Hive.registerAdapter(PhotoDBAdapter());
    Hive.registerAdapter(DetectorDBAdapter());
    Hive.registerAdapter(UserDBAdapter());
  }

  Future<void> initBoxes() async {
    recipeBox = await Hive.openBox<RecipeDB>('recipe');
    ingredientBox = await Hive.openBox<IngredientDB>('ingredient');
    stepBox = await Hive.openBox<StepDB>('step');
    measureUnitBox = await Hive.openBox<MeasureUnitDB>('measureUnit');
    photoBox = await Hive.openBox<PhotoDB>('photo');
    detectorBox = await Hive.openBox<DetectorDB>('detector');
    userBox = await Hive.openBox<UserDB>('user');
  }
}