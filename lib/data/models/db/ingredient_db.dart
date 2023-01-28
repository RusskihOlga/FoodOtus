import 'package:food_otus/data/models/db/measure_unit_db.dart';
import 'package:hive/hive.dart';
part 'ingredient_db.g.dart';

@HiveType(typeId: 1)
class IngredientDB extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  int count;
  @HiveField(3)
  double caloriesForUnit;
  @HiveField(4)
  MeasureUnitDB measureUnit;

  IngredientDB({
    required this.id,
    required this.name,
    required this.caloriesForUnit,
    required this.count,
    required this.measureUnit,
  });
}
