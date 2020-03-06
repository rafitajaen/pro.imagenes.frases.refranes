import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../model/favorites.dart';

class FavoritesService {
  static const String boxName = 'favorites';
  static const String boxKey = 'favorites_key';

  static Favorites _defaultFavorites = Favorites(value: []);

  static Future<Box<Favorites>> openBox() async {
    return await Hive.openBox<Favorites>(boxName);
  }

  static ValueListenable<Box<Favorites>> getValueListenable() {
    return Hive.box<Favorites>(boxName).listenable(keys: [boxKey]);
  }

  static List<int> getFavoritesValue(Box<Favorites> box) {
    return _getFavorites(box).value;
  }

  static bool isFavorite(int id) {
    Box<Favorites> box = Hive.box<Favorites>(boxName);
    Favorites favorites = _getFavorites(box);

    List<int> favoritesList = favorites.value;

    return favoritesList.contains(id);
  }

  static void update(int id) {
    Box<Favorites> box = Hive.box<Favorites>(boxName);
    Favorites favorites = _getFavorites(box);

    List<int> favoritesList = favorites.value;

    bool _isFavorite = isFavorite(id);

    if (_isFavorite) {
      favoritesList.remove(id);
    } else {
      favoritesList.add(id);
    }

    _getFavorites(box).save();
  }

  static Favorites _getFavorites(Box<Favorites> box) {
    if (box.isEmpty) {
      box.put(boxKey, _defaultFavorites);
      box.get(boxKey).save();
    }

    return box.get(boxKey);
  }
}
