// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_reward.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LastRewardAdapter extends TypeAdapter<LastReward> {
  @override
  final typeId = 10;

  @override
  LastReward read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LastReward(
      value: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, LastReward obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.value);
  }
}
