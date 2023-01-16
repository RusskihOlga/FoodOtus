import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:food_otus/pages/recipes/bloc/recipe_bloc.dart';
import 'package:food_otus/pages/recipes/widgets/item_recipe.dart';

class ListRecipe extends StatelessWidget {
  final List<Recipe> recipes;

  const ListRecipe({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => InkWell(
        onTap: () => context.read<RecipeBloc>().add(
              GetRecipe(recipes[index].id),
            ),
        child: ItemRecipe(recipe: recipes[index]),
      ),
      itemCount: recipes.length,
    );
  }
}
