// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TagAdapter extends TypeAdapter<Tag> {
  @override
  final typeId = 7;

  @override
  Tag read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Tag.all;
      case 1:
        return Tag.popular;
      case 2:
        return Tag.newest;
      case 3:
        return Tag.premium;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, Tag obj) {
    switch (obj) {
      case Tag.all:
        writer.writeByte(0);
        break;
      case Tag.popular:
        writer.writeByte(1);
        break;
      case Tag.newest:
        writer.writeByte(2);
        break;
      case Tag.premium:
        writer.writeByte(3);
        break;
    }
  }
}
