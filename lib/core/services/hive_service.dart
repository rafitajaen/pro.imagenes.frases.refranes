import 'dart:developer' as developer;

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../modules/app_language/model/app_language.dart';
import '../../modules/app_language/model/languages.dart';
import '../../modules/app_language/services/app_language_service.dart';
import '../../modules/coins/model/coins.dart';
import '../../modules/coins/services/coins_service.dart';
import '../../modules/favorites/model/favorites.dart';
import '../../modules/favorites/services/favorites_service.dart';
import '../../modules/last_connection/model/last_connection.dart';
import '../../modules/last_connection/services/last_connection_service.dart';
import '../../modules/last_reward/model/last_reward.dart';
import '../../modules/last_reward/services/last_reward_service.dart';
import '../../modules/proverb/model/proverb.dart';
import '../../modules/rewards/model/achievement/achievement.dart';
import '../../modules/rewards/model/rewards/rewards.dart';
import '../../modules/rewards/services/rewards_service.dart';
import '../../modules/tag/model/tag.dart';

class HiveService {
  static const int achievementTypeID = 1;
  static const int languagesTypeID = 2;
  static const int applanguageTypeID = 3;
  static const int lastConnectionTypeID = 4;
  static const int coinsTypeID = 5;
  static const int favoritesTypeID = 6;
  static const int tagTypeID = 7;
  static const int proverbTypeID = 8;
  static const int rewardsTypeID = 9;
  static const int lastRewardTypeID = 10;

  static initialize() async {
    //Inicializa Hive automáticamente para iOS y Android en la carpeta que le corresponde
    await Hive.initFlutter();
    developer.log('Hive inicializado', name: 'pro.arae.HiveService');
    //Registro de Adapters en orden de aparición
    _registerAdapters();
    developer.log('Adapters Registrados', name: 'pro.arae.HiveService');
    //Abre los Boxes que deben abrirse al inicio de la App
    await _openBoxesAtInit();
    developer.log('Init Boxes abiertas', name: 'pro.arae.HiveService');
  }

  static void _registerAdapters() {
    Hive.registerAdapter<Achievement>(AchievementAdapter());
    Hive.registerAdapter<Languages>(LanguagesAdapter());
    Hive.registerAdapter<AppLanguage>(AppLanguageAdapter());
    Hive.registerAdapter<LastConnection>(LastConnectionAdapter());
    Hive.registerAdapter<Coins>(CoinsAdapter());
    Hive.registerAdapter<Favorites>(FavoritesAdapter());
    Hive.registerAdapter<Tag>(TagAdapter());
    Hive.registerAdapter<Proverb>(ProverbAdapter());
    Hive.registerAdapter<Rewards>(RewardsAdapter());
    Hive.registerAdapter<LastReward>(LastRewardAdapter());
  }

  static _openBoxesAtInit() async {
    await AppLanguageService.openBox();
    await CoinsService.openBox();
    await FavoritesService.openBox();
    await RewardsService.openBox();
    await LastConnectionService.openBox();
    await LastRewardService.openBox();
  }

  static Future<void> close() async {
    await Hive.close();
  }
}
