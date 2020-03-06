import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../arae_dialogs/widgets/achievement_dialog.dart';
import '../../../coins/services/coins_service.dart';
import '../../../last_reward/services/last_reward_service.dart';
import '../../services/rewards_service.dart';
import '../achievement/achievement.dart';

class RateAppAchievement extends Achievement {
  RateAppAchievement()
      : super(
          id: RewardsType.rateApp.index,
          level: 0,
          currentPoints: 0,
          totalPoints: 1,
          coinsRewarded: 200,
        );

  @override
  void update(BuildContext context) {
    if (!isCompleted()) {
      currentPoints++;
      if (currentPoints == totalPoints) {
        CoinsService.addCoins(coinsRewarded);
        LastRewardService.update(coinsRewarded);
        _showAchievementDialog(context);
        _upgradeLevel();
      }
    }
  }

  void _upgradeLevel() {
    if (level == 0) level = 1;
  }

  @override
  bool isCompleted() {
    return (currentPoints == totalPoints);
  }

  _showAchievementDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AchievementDialog(
        topIcon: Icons.star,
        //Completar Encuesta
        title: S.of(context).rateAppDialogTitle,
        //¡Felicidades! Acabas de conseguir $coinsRewarded Coins por ayudarnos a mejorar nuestra App.\nRecuerda que puedes conseguir el doble de puntos!
        description: S.of(context).rateAppDialogDescription(coinsRewarded),
      ),
    );
  }
}
