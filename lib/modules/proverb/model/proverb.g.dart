// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proverb.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProverbAdapter extends TypeAdapter<Proverb> {
  @override
  final typeId = 8;

  @override
  Proverb read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Proverb(
      id: fields[0] as int,
      title: fields[2] as String,
      language: fields[1] as Languages,
      subtitle: fields[3] as String,
      image: fields[4] as String,
      tags: (fields[5] as List)?.cast<Tag>(),
      color: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Proverb obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.language)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.subtitle)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.tags)
      ..writeByte(6)
      ..write(obj.color);
  }
}
