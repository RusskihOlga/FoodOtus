import 'package:flutter_network_connectivity/flutter_network_connectivity.dart';
import 'package:food_otus/core/client.dart';
import 'package:food_otus/data/models/network/favorite_json.dart';
import 'package:food_otus/data/models/network/ingredient_json.dart';
import 'package:food_otus/data/models/network/measure_unit_json.dart';
import 'package:food_otus/data/models/network/recipe_ingridient.dart';
import 'package:food_otus/data/models/network/recipe_json.dart';
import 'package:food_otus/data/models/network/recipe_step_json.dart';
import 'package:food_otus/data/models/network/step_json.dart';

class RecipeRemoteSource {
  final Client client;
  final FlutterNetworkConnectivity _flutterNetworkConnectivity =
      FlutterNetworkConnectivity(lookUpUrl: "google.com");

  RecipeRemoteSource({required this.client});

  Future<List<RecipeJson>> getRecipes() async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.getData("recipe");
      return (response as List).map((e) => RecipeJson.fromJson(e)).toList();
    } else {
      throw Exception();
    }
  }

  Future<List<MeasureUnitJson>> getMeasureUnits() async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.getData("measure_unit");
      return (response as List)
          .map((e) => MeasureUnitJson.fromJson(e))
          .toList();
    } else {
      throw Exception();
    }
  }

  Future<List<IngredientJson>> getIngredients() async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.getData("ingredient");
      return (response as List).map((e) => IngredientJson.fromJson(e)).toList();
    } else {
      throw Exception();
    }
  }

  Future<List<RecipeIngredientJson>> getRecipeIngredients() async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.getData("recipe_ingredient");
      return (response as List)
          .map((e) => RecipeIngredientJson.fromJson(e))
          .toList();
    } else {
      throw Exception();
    }
  }

  Future<List<StepJson>> getSteps() async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.getData("recipe_step");
      return (response as List).map((e) => StepJson.fromJson(e)).toList();
    } else {
      throw Exception();
    }
  }

  Future<List<RecipeStepJson>> getStepsLink() async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.getData("recipe_step_link");
      return (response as List).map((e) => RecipeStepJson.fromJson(e)).toList();
    } else {
      throw Exception();
    }
  }

  Future<RecipeJson> getRecipe(int id) async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.getData("recipe/$id");
      return RecipeJson.fromJson(response);
    } else {
      throw Exception();
    }
  }

  Future<List<FavoriteJson>> getFavorites() async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.getData("favorite");
      return (response as List).map((e) => FavoriteJson.fromJson(e)).toList();
    } else {
      throw Exception();
    }
  }

  Future<FavoriteJson> addFavorite(int recipe, int user) async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
        var result = await client.postData("favorite", data: {
          "id": 0,
          "recipe": {"id": recipe},
          "user": {"id": user}
        });
       return FavoriteJson.fromJson(result);
    } else {
      throw Exception();
    }
  }

  Future<void> removeFavorite(int favorite) async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
        await client.deleteData("favorite/$favorite");
    } else {
      throw Exception();
    }
  }
}
