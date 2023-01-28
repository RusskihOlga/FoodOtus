part of 'recipe_bloc.dart';

@immutable
abstract class RecipeState {}

class RecipeInitial extends RecipeState {}

class Loading extends RecipeState {}

class ShowRecipes extends RecipeState {
  final List<Recipe> recipes;

  ShowRecipes(this.recipes);
}

class ShowPhoto extends RecipeState {
  final List<Photo> photo;

  ShowPhoto(this.photo);
}
class ShowRecipe extends RecipeState {
  final Recipe recipe;

  ShowRecipe(this.recipe);
}

class ShowDetectors extends RecipeState {
  final List<DetectorData> detectors;
  final String image;

  ShowDetectors(this.detectors, this.image);
}