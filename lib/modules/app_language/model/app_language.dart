import 'package:hive/hive.dart';

import '../../../core/services/hive_service.dart';
import '../../proverb/model/proverb.dart';
import '../database/app_language_database.dart';
import 'languages.dart';

part 'app_language.g.dart';

@HiveType(typeId: HiveService.applanguageTypeID)
class AppLanguage extends HiveObject {
  @HiveField(0)
  Languages _value;
  @HiveField(1)
  List<Proverb> _currentDB;

  ////////////////////
  ///CONSTRUCTORES
  ////////////////////

  AppLanguage({Languages appLanguage = Languages.en}) {
    this.value = value;
  }

  AppLanguage.locale({String localeName = 'en'}) {
    if (localeName.compareTo('es') == 0) {
      this.value = Languages.es;
    } else {
      this.value = Languages.en;
    }
  }

  ////////////////////
  ///  SETTERS
  ////////////////////

  set value(Languages appLanguage) {
    _value = appLanguage;
    _currentDB = _proverbsByLanguage(appLanguage);
  }

  ////////////////////
  ///  GETTERS
  ////////////////////

  Languages get value {
    return _value;
  }

  List<Proverb> get currentDB {
    return _currentDB;
  }

  ////////////////////
  ///  METHODS
  ////////////////////

  static List<Proverb> _proverbsByLanguage(Languages appLanguage) {
    List<Proverb> output = [];

    AppLanguagesDatabase.allProverbs.map((p) {
      if (p.language == appLanguage) output.add(p);
    }).toList();

    return output;
  }

  String languagesToString() {
    switch (value) {
      case Languages.es:
        return 'Español';
        break;
      default:
        return 'English';
        break;
    }
  }

  String languagesToLocale() {
    switch (value) {
      case Languages.es:
        return 'es';
        break;
      default:
        return 'en';
        break;
    }
  }
}
