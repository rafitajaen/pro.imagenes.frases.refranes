import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../../core/services/hive_service.dart';
import '../achievement/achievement.dart';

part 'rewards.g.dart';

@HiveType(typeId: HiveService.rewardsTypeID)
class Rewards extends HiveObject {
  @HiveField(0)
  final List<Achievement> value;
  @HiveField(1)
  final int lastReward;

  Rewards({@required this.value, this.lastReward = 0});
}
