import 'package:flutter/material.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:food_otus/presentation/recipes/detail/pages/details_page.dart';
import 'package:food_otus/presentation/recipes/detail/widgets/item_ingredient.dart';

class IngredientBlock extends StatelessWidget {
  final Recipe recipe;

  const IngredientBlock({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBlock(title: "Ингредиенты"),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF797676),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 15,
            ),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => ItemIngredient(
              ingredient: recipe.ingredients[index],
            ),
            itemCount: recipe.ingredients.length,
          ),
        ),
      ],
    );
  }
}
