part of 'recipe_bloc.dart';

@immutable
abstract class RecipeEvent {}

class GetRecipes extends RecipeEvent {}

class GetRecipe extends RecipeEvent {
  final int id;

  GetRecipe(this.id);
}

class GetPhoto extends RecipeEvent {
  final int id;

  GetPhoto(this.id);
}

class GetDetectors extends RecipeEvent {
  final String path;

  GetDetectors(this.path);
}

class AddFavorite extends RecipeEvent {
  final int id;
  final bool favorite;

  AddFavorite(this.id, this.favorite);
}

class SavePhoto extends RecipeEvent {
  final int recipe;
  final String path;
  final List<DetectorData> data;

  SavePhoto({
    required this.recipe,
    required this.path,
    required this.data,
  });
}
