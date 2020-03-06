// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_language.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppLanguageAdapter extends TypeAdapter<AppLanguage> {
  @override
  final typeId = 3;

  @override
  AppLanguage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppLanguage()
      .._value = fields[0] as Languages
      .._currentDB = (fields[1] as List)?.cast<Proverb>();
  }

  @override
  void write(BinaryWriter writer, AppLanguage obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj._value)
      ..writeByte(1)
      ..write(obj._currentDB);
  }
}
