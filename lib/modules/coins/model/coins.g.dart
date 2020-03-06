// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoinsAdapter extends TypeAdapter<Coins> {
  @override
  final typeId = 5;

  @override
  Coins read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coins(
      value: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Coins obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.value);
  }
}
