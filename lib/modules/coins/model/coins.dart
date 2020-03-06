import 'package:hive/hive.dart';

import '../../../core/services/hive_service.dart';

part 'coins.g.dart';

@HiveType(typeId: HiveService.coinsTypeID)
class Coins extends HiveObject {
  @HiveField(0)
  int value;

  Coins({this.value = 0});
}
