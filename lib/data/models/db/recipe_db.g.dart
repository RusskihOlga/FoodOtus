// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeDBAdapter extends TypeAdapter<RecipeDB> {
  @override
  final int typeId = 0;

  @override
  RecipeDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeDB(
      id: fields[0] as int,
      name: fields[1] as String,
      duration: fields[2] as int,
      favorite: fields[4] as int?,
      photo: fields[3] as String,
      steps: (fields[5] as HiveList).castHiveList(),
      ingredients: (fields[6] as HiveList).castHiveList(),
      photos: (fields[7] as HiveList).castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, RecipeDB obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.duration)
      ..writeByte(3)
      ..write(obj.photo)
      ..writeByte(4)
      ..write(obj.favorite)
      ..writeByte(5)
      ..write(obj.steps)
      ..writeByte(6)
      ..write(obj.ingredients)
      ..writeByte(7)
      ..write(obj.photos);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
