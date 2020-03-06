import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../../core/services/hive_service.dart';
import '../../../../generated/l10n.dart';

part 'achievement.g.dart';

@HiveType(typeId: HiveService.achievementTypeID)
class Achievement {
  @HiveField(0)
  int id;
  @HiveField(1)
  int level;
  @HiveField(2)
  int currentPoints;
  @HiveField(3)
  int totalPoints;
  @HiveField(4)
  int coinsRewarded;

  Achievement({
    this.id,
    this.level,
    this.currentPoints,
    this.totalPoints,
    this.coinsRewarded,
  });

  String getTitle(BuildContext context) {
    switch (id) {
      case 0:
        return S.of(context).rewardsConsecutivesDays;
        break;
      case 1:
        return S.of(context).rewardsShareProverb;
        break;
      case 2:
        return S.of(context).rewardsDownloadProverb;
        break;
      case 3:
        return S.of(context).rewardsAddFavoriteProverb;
        break;
      case 4:
        return S.of(context).rewardsRateApp;
        break;
      case 5:
        return S.of(context).rewardsFeedback;
        break;
      case 6:
        return S.of(context).rewardsShareApp;
        break;
      default:
        return '';
        break;
    }
  }

  bool isCompleted() {
    return false;
  }

  int pointsRemaining() {
    return totalPoints - currentPoints;
  }

  double pointsPercent() {
    return currentPoints / totalPoints;
  }

  @override
  String toString() {
    return 'Achievement [id: $id - $currentPoints/$totalPoints]';
  }

  // Actualiza el Ahivievement. Si aún no está completo añadimos un punto,
  // y si hemos alcanzado el objetivo de ese nivel añadimos los coins,
  // lanzamos el diálogo, y actualizamos el nivel
  void update(BuildContext context) {}
}
