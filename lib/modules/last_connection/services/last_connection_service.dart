import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../rewards/services/rewards_service.dart';
import '../model/last_connection.dart';

class LastConnectionService {
  static const String boxName = 'last_connection';
  static const String boxKey = 'last_connection_key';

  static LastConnection _default =
      LastConnection(value: DateTime.now().toString());

  static Future<Box<LastConnection>> openBox() async {
    return await Hive.openBox<LastConnection>(boxName);
  }

  static ValueListenable<Box<LastConnection>> getValueListenable() {
    return Hive.box<LastConnection>(boxName).listenable(keys: [boxKey]);
  }

  static String getValue(Box<LastConnection> box) {
    return _getLastConnection(box).value;
  }

  static LastConnection _getLastConnection(Box<LastConnection> box) {
    if (box.isEmpty) {
      box.put(boxKey, _default);
      box.get(boxKey).save();
    }

    return box.get(boxKey);
  }

  static void update(BuildContext context) {
    Box<LastConnection> box = Hive.box(boxName);
    LastConnection lastConnection = _getLastConnection(box);

    DateTime now = DateTime.now();
    DateTime date = DateTime.parse(lastConnection.value);

    now = DateTime(now.year, now.month, now.day);
    date = DateTime(date.year, date.month, date.day);

    developer.log(
        'Updating Last Connection -> now: $now - date: $date - difference: ${date.difference(now).inDays}',
        name: 'pro.arae.LastConnecionService');

    if (date.difference(now).inDays == -1) {
      RewardsService.updateConsecutiveDays(context);
    }

    lastConnection.value = date.toString();
    lastConnection.save();
  }
}
