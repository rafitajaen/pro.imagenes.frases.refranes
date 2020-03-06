import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../generated/l10n.dart';
import '../../proverb/model/proverb.dart';
import '../../tag/model/tag.dart';
import '../model/app_language.dart';
import '../model/languages.dart';

class AppLanguageService {
  static const String boxName = 'app_language';
  static const String boxKey = 'app_language_key';

  static Future<Box<AppLanguage>> openBox() async {
    return await Hive.openBox<AppLanguage>(boxName);
  }

  static void initialize(BuildContext context) {
    Box<AppLanguage> box = Hive.box(boxName);

    if (box.isEmpty) {
      String localeName = S.of(context).localeName;
      developer.log('First Time initialization localeName: $localeName',
          name: 'pro.arae.AppLanguagesService.initialize');
      box.put(boxKey, AppLanguage.locale(localeName: localeName));
      box.get(boxKey).currentDB.shuffle();

      box.get(boxKey).save();
    } else {
      _loadAppLanguage(context, box);
    }
    developer.log(
        'App Language loaded -> value: ${box.get(boxKey).value} - currentDB.lenght: ${box.get(boxKey).currentDB.length}',
        name: 'pro.arae.AppLanguagesService.initialize');
  }

  static ValueListenable<Box<AppLanguage>> getValueListenable() {
    return Hive.box<AppLanguage>(boxName).listenable(keys: [boxKey]);
  }

  static Languages getAppLanguageValue(Box<AppLanguage> box) {
    AppLanguage appLanguage = _getAppLanguage(box);

    return appLanguage.value;
  }

  static List<Proverb> getCurrentDB(Box<AppLanguage> box) {
    AppLanguage appLanguage = _getAppLanguage(box);
    return appLanguage.currentDB;
  }

  static List<Proverb> getCurrentDBByTag(Box<AppLanguage> box, Tag tag) {
    List<Proverb> currentDB = getCurrentDB(box);

    List<Proverb> output = [];

    currentDB.map((p) {
      if (p.contains(tag)) output.add(p);
    }).toList();

    return output;
  }

  static AppLanguage _getAppLanguage(Box<AppLanguage> box) {
    return box.get(boxKey);
  }

  static bool isSelected(Box<AppLanguage> box, Languages language) {
    return getAppLanguageValue(box) == (language);
  }

  static void update(
      BuildContext context, Box<AppLanguage> box, Languages languageSelected) {
    Languages currentLanguage = _getAppLanguage(box).value;

    

    if (currentLanguage != languageSelected) {
      _getAppLanguage(box).value = languageSelected;
      _getAppLanguage(box).save();
      _loadAppLanguage(context, box);
    }
  }

  static String getAppLanguageString(Box<AppLanguage> box) {
    return _getAppLanguage(box).languagesToString();
  }

  static void _loadAppLanguage(BuildContext context, Box<AppLanguage> box) {
    String locale = _getAppLanguage(box).languagesToLocale();

    S.load(Locale(locale, ''));
  }

  static String nameLanguages(Languages language) {
    switch (language) {
      case Languages.es:
        return 'Español';
        break;
      default:
        return 'English';
        break;
    }
  }

  static void shuffle() {
    Box<AppLanguage> box = Hive.box(boxName);

    _getAppLanguage(box).currentDB.shuffle();
    _getAppLanguage(box).save();
  }
}
