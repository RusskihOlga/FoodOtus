import 'package:flutter/material.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:food_otus/presentation/recipes/detail/pages/details_page.dart';
import 'package:food_otus/presentation/recipes/detail/widgets/item_step.dart';

class StepBlock extends StatelessWidget {
  final Recipe recipe;

  const StepBlock({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBlock(title: "Шаги приготовления"),
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) => const SizedBox(
            height: 15,
          ),
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => ItemStep(
            step: recipe.steps[index],
          ),
          itemCount: recipe.steps.length,
        ),
      ],
    );
  }
}
