import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../arae_dialogs/widgets/achievement_dialog.dart';
import '../../../coins/services/coins_service.dart';
import '../../../last_reward/services/last_reward_service.dart';
import '../../services/rewards_service.dart';
import '../achievement/achievement.dart';

class DownloadProverbAchievement extends Achievement {
  DownloadProverbAchievement()
      : super(
          id: RewardsType.downloadProverb.index,
          level: 0,
          currentPoints: 0,
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

  void _upgradeLevel() {
    if (level == 0) {
      level = 1;
      totalPoints = 5;
    } else if (level == 1) {
      level = 2;
      totalPoints = 10;
      coinsRewarded = 100;
    }
  }

  @override
  bool isCompleted() {
    return (level == 2) && (currentPoints == totalPoints);
  }

  _showAchievementDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AchievementDialog(
        topIcon: Icons.file_download,
        //Descargar Refranes
        title: S.of(context).downloadProverbsDialogTitle(currentPoints),
        //¡Felicidades! Acabas de conseguir $coinsRewarded Coins por descargar $currentPoints Refranes. \n Recuerda que puedes conseguir el doble de puntos!
        description: S
            .of(context)
            .downloadProverbsDialogDescription(coinsRewarded, currentPoints),
      ),
    );
  }
}
