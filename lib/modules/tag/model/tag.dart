import 'package:hive/hive.dart';

import '../../../core/services/hive_service.dart';

part 'tag.g.dart';

@HiveType(typeId: HiveService.tagTypeID)
enum Tag {
  @HiveField(0)
  all,
  @HiveField(1)
  popular,
  @HiveField(2)
  newest,
  @HiveField(3)
  premium
}
