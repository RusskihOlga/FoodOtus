part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class ShowFavorites extends FavoriteState {
  final List<Recipe> recipes;

  ShowFavorites(this.recipes);
}