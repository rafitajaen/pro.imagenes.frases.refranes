import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../arae_dialogs/utils/arae_dialogs.dart';
import '../model/coins.dart';

class CoinsService {
  static const String boxName = 'coins';
  static const String boxKey = 'coins_key';

  static Coins _defaultCoins = Coins(value: 50);

  static Future<Box<Coins>> openBox() async {
    return await Hive.openBox<Coins>(boxName);
  }

  static ValueListenable<Box<Coins>> getValueListenable() {
    return Hive.box<Coins>(boxName).listenable(keys: [boxKey]);
  }

  static int getCoinsValue(Box<Coins> box) {
    Coins coins = _getCoins(box);
    return coins.value;
  }

  static Coins _getCoins(Box<Coins> box) {
    if (box == null) {
      developer.log('***NULL*** box: $boxName',
          name: 'pro.arae.CoinsService._getCoins');
    }

    if (box.isEmpty) {
      box.put(boxKey, _defaultCoins);
      box.get(boxKey).save();
    }

    return box.get(boxKey);
  }

  static void addCoins(int coinsRewarded) {
    Box<Coins> box = Hive.box(boxName);
    Coins coins = _getCoins(box);
    coins.value = coins.value + coinsRewarded;
    coins.save();
  }

  static bool canDownload(BuildContext context, bool isPremium) {
    Box<Coins> box = Hive.box(boxName);
    Coins coins = _getCoins(box);

    int _downloadCost = downloadCost(isPremium);

    bool output = true;

    if (coins.value < _downloadCost) {
      AraeDialogs.needMoreCoins(context,
          coinsNeeded: _downloadCost - coins.value);
      output = false;
    }
    return output;
  }

  static int downloadCost(bool isPremium) {
    return isPremium ? 100 : 50;
  }

  static void update(bool isPremium) {
    Box<Coins> box = Hive.box(boxName);
    Coins coins = _getCoins(box);

    coins.value = coins.value - downloadCost(isPremium);
    coins.save();
  }
}
