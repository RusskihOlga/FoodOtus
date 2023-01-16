// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detector_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetectorDBAdapter extends TypeAdapter<DetectorDB> {
  @override
  final int typeId = 5;

  @override
  DetectorDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetectorDB(
      detectedClass: fields[0] as String,
      rect: (fields[1] as Map).cast<dynamic, dynamic>(),
      confidence: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, DetectorDB obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.detectedClass)
      ..writeByte(1)
      ..write(obj.rect)
      ..writeByte(2)
      ..write(obj.confidence);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetectorDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
