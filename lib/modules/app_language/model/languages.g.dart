// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LanguagesAdapter extends TypeAdapter<Languages> {
  @override
  final typeId = 2;

  @override
  Languages read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Languages.en;
      case 1:
        return Languages.es;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, Languages obj) {
    switch (obj) {
      case Languages.en:
        writer.writeByte(0);
        break;
      case Languages.es:
        writer.writeByte(1);
        break;
    }
  }
}
