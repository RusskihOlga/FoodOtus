import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/core/di.dart';
import 'package:food_otus/pages/favorite/bloc/favorite_bloc.dart';
import 'package:food_otus/pages/recipes/widgets/list_recipe.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteBloc>(
      create: (context) => appIns<FavoriteBloc>()..add(GetFavorites()),
      child: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) {
          if (state is ShowFavorites) {
            return ListRecipe(recipes: state.recipes);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
