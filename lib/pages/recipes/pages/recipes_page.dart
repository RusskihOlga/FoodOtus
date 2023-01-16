import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/pages/recipes/bloc/recipe_bloc.dart';
import 'package:food_otus/pages/recipes/widgets/list_recipe.dart';
import 'package:go_router/go_router.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<RecipeBloc>().add(GetRecipes());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecipeBloc, RecipeState>(
      listener: (context, state) {
        if (state is ShowRecipe) {
          context.push("/details", extra: {"recipe": state.recipe});
        }
      },
      child: BlocBuilder<RecipeBloc, RecipeState>(
        buildWhen: (prevState, nextState) =>
        nextState is Loading || nextState is ShowRecipes,
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ShowRecipes) {
            return ListRecipe(recipes: state.recipes);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
