import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../generated/l10n.dart';
import '../../app_language/services/app_language_service.dart';
import '../../arae_drawer/widgets/drawer_tile.dart';
import '../model/favorites.dart';
import '../pages/favorites_page.dart';
import '../services/favorites_service.dart';

class FavoritesDrawerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppLanguageService.shuffle();
    return ValueListenableBuilder(
      valueListenable: FavoritesService.getValueListenable(),
      builder: (context, Box<Favorites> box, widget) {
        return DrawerTile(
          title: S.of(context).drawerFavorites,
          badge: FavoritesService.getFavoritesValue(box).length,
          onTap: () => FavoritesPage.navigateTo(context, popBefore: true),
        );
      },
    );
  }
}
