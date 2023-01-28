import 'package:bloc/bloc.dart';
import 'package:food_otus/domain/entities/detector_data.dart';
import 'package:food_otus/domain/entities/photo.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:food_otus/domain/repositories/recipe_repository.dart';
import 'package:food_otus/domain/repositories/user_repository.dart';
import 'package:meta/meta.dart';

part 'recipe_event.dart';

part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final UserRepository userRepository;
  final RecipeRepository recipeRepository;

  RecipeBloc({
    required this.userRepository,
    required this.recipeRepository,
  }) : super(RecipeInitial()) {
    on<GetRecipes>(_getRecipes);
    on<GetPhoto>(_getPhoto);
    on<AddFavorite>(_addFavorite);
    on<GetRecipe>(_getRecipe);
    on<SavePhoto>(_savePhoto);
    on<GetDetectors>(_getDetectors);
  }

  _getRecipes(GetRecipes event, Emitter<RecipeState> emit) async {
    emit(Loading());
    var user = userRepository.getUser();
    var recipes = await recipeRepository.getRecipes(user);
    emit(ShowRecipes(recipes));
  }

  _getRecipe(GetRecipe event, Emitter<RecipeState> emit) {
    var recipe = recipeRepository.getRecipe(event.id);
    emit(ShowRecipe(recipe));
  }

  _getPhoto(GetPhoto event, Emitter<RecipeState> emit) {
    var photo = recipeRepository.getPhoto(event.id);
    emit(ShowPhoto(photo));
  }

  _savePhoto(SavePhoto event, Emitter<RecipeState> emit) async {
    await recipeRepository.savePhoto(event.recipe, event.path, event.data);
    var photo = recipeRepository.getPhoto(event.recipe);
    emit(ShowPhoto(photo));
  }

  _getDetectors(GetDetectors event, Emitter<RecipeState> emit) {
    var detectors = recipeRepository.getDetectors(event.path);
    emit(ShowDetectors(detectors, event.path));
  }

  _addFavorite(AddFavorite event, Emitter<RecipeState> emit) async {
    var user = userRepository.getUser();
    if (user != null) {
      if (event.favorite) {
        await recipeRepository.addFavorite(event.id, user.id);
      } else {
        await recipeRepository.removeFavorite(event.id);
      }
    }
  }
}
