import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../app_language/services/app_language_service.dart';
import '../../arae_drawer/widgets/drawer_tile.dart';
import '../database/promoted_apps_database.dart';
import '../pages/promoted_apps_page.dart';

class PromotedAppsDrawerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppLanguageService.shuffle();
    int _apps = PromotedAppsDatabase.apps.length;
    if (_apps == 0) {
      return Container();
    } else {
      return DrawerTile(
        title: S.of(context).drawerNewApps,
        badge: PromotedAppsDatabase.apps.length,
        highlight: true,
        onTap: () => PromotedAppsPage.navigateTo(context, popBefore: true),
      );
    }
  }
}
