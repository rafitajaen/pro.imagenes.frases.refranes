import 'package:flutter/services.dart';
import 'package:refranes/model/article.dart';

class MyUtils {
  static Future<void> setPreferredOrientation() async {
    return await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static bool isFavorite(List<String> favList, Article article) {
    bool output = false;

    favList.map((s) {
      output = output || (int.parse(s) == article.id);
    }).toList();

    return output;
  }
}
