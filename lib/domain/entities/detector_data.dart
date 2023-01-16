import 'package:food_otus/data/models/db/detector_db.dart';

class DetectorData {
  final RectDetector rect;
  final double confidenceInClass;
  final String detectedClass;

  DetectorData({
    required this.rect,
    required this.confidenceInClass,
    required this.detectedClass,
  });

  factory DetectorData.fromDB(DetectorDB data) => DetectorData(
        rect: RectDetector(
          data.rect["w"],
          data.rect["h"],
          data.rect["x"],
          data.rect["y"],
        ),
        confidenceInClass: data.confidence,
        detectedClass: data.detectedClass,
      );
}

class RectDetector {
  final double w;
  final double h;
  final double x;
  final double y;

  RectDetector(this.w, this.h, this.x, this.y);
}
