import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../model/achievement/achievement.dart';
import '../model/achievements/add_favorite_proverb_achievement.dart';
import '../model/achievements/consecutive_days_achievement.dart';
import '../model/achievements/download_proverb_achievement.dart';
import '../model/achievements/feedback_achievement.dart';
import '../model/achievements/rate_app_achievement.dart';
import '../model/achievements/share_app_achievement.dart';
import '../model/achievements/share_proverb_achievement.dart';
import '../model/rewards/rewards.dart';

enum RewardsType {
  consecutiveDays,
  shareProverb,
  downloadProverb,
  addFavorite,
  rateApp,
  feedback,
  shareApp
}

class RewardsService {
  static const String boxName = 'rewards';
  static const String boxKey = 'rewards_key';

  static Rewards _default = Rewards(value: [
    ConsecutiveDaysAchievement(),
    ShareProverbAchievement(),
    DownloadProverbAchievement(),
    AddFavoriteProverbAchievement(),
    RateAppAchievement(),
    FeedbackAchievement(),
    ShareAppAchievement()
  ]);

  static Future<Box<Rewards>> openBox() async {
    return await Hive.openBox<Rewards>(boxName);
  }

  static ValueListenable<Box<Rewards>> getValueListenable() {
    return Hive.box<Rewards>(boxName).listenable(keys: [boxKey]);
  }

  static Rewards _getRewards(Box<Rewards> box) {
    if (box.isEmpty) {
      box.put(boxKey, _default);
      box.get(boxKey).save();
    }

    return box.get(boxKey);
  }

  static List<Achievement> getValue(Box<Rewards> box) {
    return _getRewards(box).value;
  }

  static void updateAddFavorites(BuildContext context, bool isFavorite) {
    if (!isFavorite) {
      Box<Rewards> box = Hive.box(boxName);
      Rewards rewards = _getRewards(box);

      rewards.value[RewardsType.addFavorite.index].update(context);

      rewards.save();
    }
  }

  static void updateDownloadProverb(BuildContext context) {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);

    rewards.value[RewardsType.downloadProverb.index].update(context);

    rewards.save();
  }

  static void updateConsecutiveDays(BuildContext context) {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);

    rewards.value[RewardsType.consecutiveDays.index].update(context);

    rewards.save();
  }

  static void updateShareProverb(BuildContext context) {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);

    rewards.value[RewardsType.shareProverb.index].update(context);

    rewards.save();
  }

  static void updateFeedback(BuildContext context) {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);

    rewards.value[RewardsType.feedback.index].update(context);

    rewards.save();
  }

  static bool isFeedbackCompleted() {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);
    return rewards.value[RewardsType.feedback.index].isCompleted();
  }

  static void updateRateApp(BuildContext context) {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);

    rewards.value[RewardsType.rateApp.index].update(context);

    rewards.save();
  }

  static bool isRateAppCompleted() {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);
    return rewards.value[RewardsType.rateApp.index].isCompleted();
  }

  static void updateShareApp(BuildContext context) {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);

    rewards.value[RewardsType.shareApp.index].update(context);

    rewards.save();
  }

  static bool isShareAppCompleted() {
    Box<Rewards> box = Hive.box(boxName);
    Rewards rewards = _getRewards(box);
    return rewards.value[RewardsType.shareApp.index].isCompleted();
  }
}
