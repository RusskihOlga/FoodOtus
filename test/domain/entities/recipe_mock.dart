import 'package:food_otus/data/models/db/ingredient_db.dart';
import 'package:food_otus/data/models/db/measure_unit_db.dart';
import 'package:food_otus/domain/entities/ingredient.dart';
import 'package:food_otus/domain/entities/measure_unit.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:food_otus/domain/entities/step_recipe.dart';

List<IngredientDB> getIngredients() {
  var unit = MeasureUnitDB(id: 1, one: "", few: "", many: "");
  return [
    IngredientDB(
      id: 1,
      name: "Филе лосося",
      caloriesForUnit: 1.7714,
      count: 500,
      measureUnit: unit,
    ),
    IngredientDB(
      id: 2,
      name: "Соевый соус",
      caloriesForUnit: 10.6,
      count: 3,
      measureUnit: unit,
    ),
    IngredientDB(
      id: 3,
      name: "Соус терияки",
      caloriesForUnit: 17.8,
      count: 4,
      measureUnit: unit,
    ),
    IngredientDB(
      id: 4,
      name: "Лимонный сок",
      caloriesForUnit: 3.2,
      count: 2,
      measureUnit: unit,
    ),
    IngredientDB(
      id: 5,
      name: "Коричневый сахар",
      caloriesForUnit: 76,
      count: 2,
      measureUnit: unit,
    ),
    IngredientDB(
      id: 6,
      name: "Зеленый лук",
      caloriesForUnit: 23,
      count: 2,
      measureUnit: unit,
    ),
    IngredientDB(
      id: 7,
      name: "Кунжут",
      caloriesForUnit: 28.25,
      count: 2,
      measureUnit: unit,
    ),
    IngredientDB(
      id: 8,
      name: "Соль",
      caloriesForUnit: 0,
      count: 0,
      measureUnit: unit,
    ),
    IngredientDB(
      id: 9,
      name: "Перец",
      caloriesForUnit: 0,
      count: 0,
      measureUnit: unit,
    ),
  ];
}

Recipe getRecipeEmpty() {
  return const Recipe(
    id: 1,
    name: "Тестовый рецепт",
    duration: 100,
    photo: "",
    steps: [],
    ingredients: [],
    favorite: null,
  );
}

Recipe getRecipeFull() {
  return Recipe(
    id: 1,
    name: "Тестовый рецепт",
    duration: 100,
    photo: "",
    steps: [
      StepRecipe(name: 'Тестовый шаг', duration: 100, number: 1),
    ],
    ingredients: [
      Ingredient(
        name: 'Тестовый ингредиент',
        count: 4,
        unit: MeasureUnit(
          one: 'штука',
          few: 'штук',
          many: 'штук',
        ),
      ),
    ],
    favorite: null,
  );
}
