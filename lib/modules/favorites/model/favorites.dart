import 'package:hive/hive.dart';

import '../../../core/services/hive_service.dart';

part 'favorites.g.dart';

@HiveType(typeId: HiveService.favoritesTypeID)
class Favorites extends HiveObject {
  @HiveField(0)
  List<int> value;

  Favorites({this.value = const []});

  bool isFavorite(int id){
    return value.contains(id);
  }
}
