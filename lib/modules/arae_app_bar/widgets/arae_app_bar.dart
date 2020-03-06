import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/my_themes.dart';
import '../../coins/widgets/coins_chip.dart';
import '../../promoted_apps/database/promoted_apps_database.dart';

class AraeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final bool isHome;
  final bool showBack;

  const AraeAppBar(
      {Key key,
      @required this.title,
      this.centerTitle = false,
      this.isHome = false,
      this.showBack = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: isHome
          ? _buildHomeAppBarLeading(context)
          : showBack ? _buildAppBarLeading(context) : Container(),
      title: Text(
        title,
        style:
            TextStyle(color: Colors.blueGrey[900], fontWeight: FontWeight.w600),
      ),
      centerTitle: centerTitle,
      actions: <Widget>[CoinsChip()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget _buildAppBarLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  Builder _buildHomeAppBarLeading(BuildContext context) {
    int _apps = PromotedAppsDatabase.apps.length;
    return Builder(
      builder: (BuildContext context) {
        if (_apps == 0) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        } else {
          return Badge(
            badgeContent: Text(
              '$_apps',
              style: TextStyle(color: MyThemes.accentColorConstrast),
            ),
            badgeColor: MyThemes.accentColor,
            position: BadgePosition(bottom: 25.0, left: 30.0),
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          );
        }
      },
    );
  }
}
