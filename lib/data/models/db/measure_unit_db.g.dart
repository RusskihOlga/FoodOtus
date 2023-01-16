// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_unit_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasureUnitDBAdapter extends TypeAdapter<MeasureUnitDB> {
  @override
  final int typeId = 2;

  @override
  MeasureUnitDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureUnitDB(
      id: fields[0] as int,
      one: fields[1] as String,
      few: fields[2] as String,
      many: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MeasureUnitDB obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.one)
      ..writeByte(2)
      ..write(obj.few)
      ..writeByte(3)
      ..write(obj.many);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeasureUnitDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
