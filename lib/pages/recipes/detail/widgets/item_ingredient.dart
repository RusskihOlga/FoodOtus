import 'package:flutter/material.dart';
import 'package:food_otus/domain/entities/ingredient.dart';

class ItemIngredient extends StatelessWidget {
  final Ingredient ingredient;

  const ItemIngredient({
    Key? key,
    required this.ingredient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: Text(
            "• ${ingredient.name}",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          ingredient.getCount(),
          style: const TextStyle(
            color: Color(0xFF797676),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
