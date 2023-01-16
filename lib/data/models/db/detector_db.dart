import 'package:hive/hive.dart';
part 'detector_db.g.dart';

@HiveType(typeId: 5)
class DetectorDB extends HiveObject {
  @HiveField(0)
  String detectedClass;
  @HiveField(1)
  Map rect;
  @HiveField(2)
  double confidence;

  DetectorDB({
    required this.detectedClass,
    required this.rect,
    required this.confidence,
  });
}