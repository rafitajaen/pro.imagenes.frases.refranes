import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../core/services/hive_service.dart';

part 'last_connection.g.dart';

@HiveType(typeId: HiveService.lastConnectionTypeID)
class LastConnection extends HiveObject {
  @HiveField(0)
  String value;

  LastConnection({@required this.value});
}
