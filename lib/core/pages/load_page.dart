import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import '../../auth_redirect.dart';
import '../../modules/app_language/services/app_language_service.dart';
import '../../modules/last_connection/services/last_connection_service.dart';
import '../../modules/promoted_apps/database/promoted_apps_database.dart';

class LoadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    developer.log('LoadPage Rebuild', name: 'pro.arae.LoadPage');

    AppLanguageService.initialize(context);

    PromotedAppsDatabase.initialize(context);

    LastConnectionService.update(context);

    return AuthRedirect();
  }
}
