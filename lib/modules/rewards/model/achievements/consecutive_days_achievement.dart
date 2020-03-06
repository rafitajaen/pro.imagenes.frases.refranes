import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../arae_dialogs/widgets/achievement_dialog.dart';
import '../../../coins/services/coins_service.dart';
import '../../../last_reward/services/last_reward_service.dart';
import '../../services/rewards_service.dart';
import '../achievement/achievement.dart';

class ConsecutiveDaysAchievement extends Achievement {
  ConsecutiveDaysAchievement()
      : super(
            id: RewardsType.consecutiveDays.index,
            level: 0,
            currentPoints: 1,
            totalPoints: 2,
            coinsRewarded: 50,
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

  _showAchievementDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AchievementDialog(
        topIcon: Icons.date_range,

        //$currentPoints Días Consecutivos Conectado
        title: S.of(context).consecutiveDaysDialogTitle(currentPoints),

        //¡Felicidades! Acabas de conseguir $coinsRewarded Coins por conectarte $currentPoints días consecutivos a nuestra Aplicación. \n Recuerda que puedes conseguir el doble de puntos!
        description: S
            .of(context)
            .consecutiveDaysDialogDescription(coinsRewarded, currentPoints),
      ),
    );
  }

  void _upgradeLevel() {
    level++;
    totalPoints++;
  }
}
