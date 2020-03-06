import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../model/last_reward.dart';

class LastRewardService {
  static const String boxName = 'last_reward';
  static const String boxKey = 'last_reward_key';

  static LastReward _default = LastReward();

  static Future<Box<LastReward>> openBox() async {
    return await Hive.openBox<LastReward>(boxName);
  }

  static ValueListenable<Box<LastReward>> getValueListenable() {
    return Hive.box<LastReward>(boxName).listenable(keys: [boxKey]);
  }

  static int getValue() {
    Box<LastReward> box = Hive.box(boxName);
    return _getLastReward(box).value;
  }

  static LastReward _getLastReward(Box<LastReward> box) {
    if (box.isEmpty) {
      box.put(boxKey, _default);
      box.get(boxKey).save();
    }

    return box.get(boxKey);
  }

  static void update(int coinsRewarded) {
    Box<LastReward> box = Hive.box(boxName);
    LastReward lastReward = _getLastReward(box);

    lastReward.value = coinsRewarded;
    lastReward.save();
  }

  static void clear() {
    update(0);
  }
}
