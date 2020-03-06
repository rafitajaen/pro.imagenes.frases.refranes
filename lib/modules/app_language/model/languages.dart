import 'package:hive/hive.dart';

import '../../../core/services/hive_service.dart';

part 'languages.g.dart';

@HiveType(typeId: HiveService.languagesTypeID)
enum Languages {
  @HiveField(0)
  en,
  @HiveField(1)
  es
}
