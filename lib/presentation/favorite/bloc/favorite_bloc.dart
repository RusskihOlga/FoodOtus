import 'package:bloc/bloc.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:food_otus/domain/repositories/recipe_repository.dart';
import 'package:meta/meta.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final RecipeRepository repository;
  FavoriteBloc({required this.repository }) : super(FavoriteInitial()) {
    on<GetFavorites>(_getFavorites);
  }

  _getFavorites(GetFavorites event, Emitter<FavoriteState> emit) {
    var recipes = repository.getFavorites();
    emit(ShowFavorites(recipes));
  }
}
