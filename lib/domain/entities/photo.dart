import 'package:food_otus/data/models/db/photo_db.dart';

class Photo {
  final String path;

  const Photo({
    required this.path,
  });

  factory Photo.fromDB(PhotoDB data) => Photo(
        path: data.path,
      );
}
