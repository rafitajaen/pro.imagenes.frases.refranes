// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RewardsAdapter extends TypeAdapter<Rewards> {
  @override
  final typeId = 9;

  @override
  Rewards read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Rewards(
      value: (fields[0] as List)?.cast<Achievement>(),
      lastReward: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Rewards obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.lastReward);
  }
}
