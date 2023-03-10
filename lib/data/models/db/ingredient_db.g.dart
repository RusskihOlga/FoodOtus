// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IngredientDBAdapter extends TypeAdapter<IngredientDB> {
  @override
  final int typeId = 1;

  @override
  IngredientDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IngredientDB(
      id: fields[0] as int,
      name: fields[1] as String,
      count: fields[2] as int,
      measureUnit: fields[3] as MeasureUnitDB,
    );
  }

  @override
  void write(BinaryWriter writer, IngredientDB obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.measureUnit);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
