import 'package:food_otus/data/models/db/measure_unit_db.dart';

class MeasureUnit {
  final String one;
  final String few;
  final String many;

  MeasureUnit({
    required this.one,
    required this.few,
    required this.many,
  });

  factory MeasureUnit.fromDB(MeasureUnitDB data) => MeasureUnit(
    one: data.one,
    few: data.few,
    many: data.many,
  );
}
