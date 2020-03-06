// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AchievementAdapter extends TypeAdapter<Achievement> {
  @override
  final typeId = 1;

  @override
  Achievement read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Achievement(
      id: fields[0] as int,
      level: fields[1] as int,
      currentPoints: fields[2] as int,
      totalPoints: fields[3] as int,
      coinsRewarded: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Achievement obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.level)
      ..writeByte(2)
      ..write(obj.currentPoints)
      ..writeByte(3)
      ..write(obj.totalPoints)
      ..writeByte(4)
      ..write(obj.coinsRewarded);
  }
}
