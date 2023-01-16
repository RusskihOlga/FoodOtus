import 'package:food_otus/data/models/db/step_db.dart';

class StepRecipe {
  final int number;
  final String name;
  final int duration;

  StepRecipe({
    required this.number,
    required this.name,
    required this.duration,
  });

  factory StepRecipe.fromDB(StepDB data) => StepRecipe(
    number: data.number,
    name: data.name,
    duration: data.duration,
  );
}
