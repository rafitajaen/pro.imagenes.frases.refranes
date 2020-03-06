import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../arae_dialogs/widgets/achievement_dialog.dart';
import '../../../coins/services/coins_service.dart';
import '../../../last_reward/services/last_reward_service.dart';
import '../../services/rewards_service.dart';
import '../achievement/achievement.dart';

class AddFavoriteProverbAchievement extends Achievement {
  AddFavoriteProverbAchievement()
      : super(
          id: RewardsType.addFavorite.index,
          level: 0,
          currentPoints: 0,
          totalPoints: 5,
          coinsRewarded: 50,
        );

  // Actualiza el Ahivievement. Si aún no está completo añadimos un punto,
  // y si hemos alcanzado el objetivo de ese nivel añadimos los coins,
  // lanzamos el diálogo, y actualizamos el nivel

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
      totalPoints = 10;
    } else if (level == 1) {
      level = 2;
      totalPoints = 20;
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
        topIcon: Icons.favorite,
        //Añadir a Favoritos
        title: S.of(context).addFavoriteDialogTitle,
        //¡Felicidades! Acabas de conseguir $coinsRewarded Coins por Añadir $currentPoints Refranes a Favoritos. \n Recuerda que puedes conseguir el doble de puntos!
        description: S
            .of(context)
            .addFavoriteDialogDescription(coinsRewarded, currentPoints),
      ),
    );
  }
}
