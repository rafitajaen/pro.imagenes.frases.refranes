// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_connection.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LastConnectionAdapter extends TypeAdapter<LastConnection> {
  @override
  final typeId = 4;

  @override
  LastConnection read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LastConnection(
      value: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LastConnection obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.value);
  }
}
