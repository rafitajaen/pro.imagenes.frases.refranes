import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../arae_drawer/widgets/drawer_tile.dart';
import '../pages/languages_page.dart';

class AppLanguageDrawerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      title: S.of(context).drawerLanguages,
      trailingIcon: Icons.language,
      onTap: () => LanguagesPage.navigateTo(context, popBefore: true),
    );
  }
}
