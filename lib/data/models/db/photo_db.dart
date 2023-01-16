import 'package:food_otus/data/models/db/detector_db.dart';
import 'package:hive/hive.dart';

part 'photo_db.g.dart';

@HiveType(typeId: 4)
class PhotoDB extends HiveObject {
  @HiveField(0)
  String path;
  @HiveField(1)
  HiveList<DetectorDB> detectors;

  PhotoDB({
    required this.path,
    required this.detectors,
  });
}
