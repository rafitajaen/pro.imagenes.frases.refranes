import 'package:hive/hive.dart';

import '../../../core/services/hive_service.dart';

part 'last_reward.g.dart';

@HiveType(typeId: HiveService.lastRewardTypeID)
class LastReward extends HiveObject {
  @HiveField(0)
  int value;

  LastReward({this.value = 0});
}
