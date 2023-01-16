import 'package:hive/hive.dart';

part 'step_db.g.dart';

@HiveType(typeId: 3)
class StepDB extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  int number;
  @HiveField(2)
  String name;
  @HiveField(3)
  int duration;


  StepDB({
    required this.id,
    required this.number,
    required this.name,
    required this.duration,
  });
}
