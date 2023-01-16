import 'package:hive/hive.dart';
part 'measure_unit_db.g.dart';

@HiveType(typeId: 2)
class MeasureUnitDB extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String one;
  @HiveField(2)
  String few;
  @HiveField(3)
  String many;

  MeasureUnitDB({
    required this.id,
    required this.one,
    required this.few,
    required this.many,
  });
}
