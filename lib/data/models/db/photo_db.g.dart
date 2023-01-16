// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PhotoDBAdapter extends TypeAdapter<PhotoDB> {
  @override
  final int typeId = 4;

  @override
  PhotoDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PhotoDB(
      path: fields[0] as String,
      detectors: (fields[1] as HiveList).castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, PhotoDB obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.path)
      ..writeByte(1)
      ..write(obj.detectors);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhotoDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
