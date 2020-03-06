import 'package:flutter/material.dart';

import '../../../core/services/analytics_service.dart';
import '../../../generated/l10n.dart';
import '../../arae_app_bar/widgets/arae_app_bar.dart';
import '../database/promoted_apps_database.dart';
import '../model/arae_app.dart';

class PromotedAppsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AraeAppBar(title: S.of(context).promotedAppsPageTitle),
      body: ListView.builder(
        itemCount: PromotedAppsDatabase.apps.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return TopPromotedAppsPage();
          } else {
            return PromotedAppTile(app: PromotedAppsDatabase.apps[index - 1]);
          }
        },
      ),
    );
  }

  static navigateTo(BuildContext context, {bool popBefore = false}) {
    const String screenName = 'promoted_apps_page';

    if (popBefore) Navigator.of(context).pop();
    AnalyticsService.setCurrentScreen(context, screenName);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PromotedAppsPage(),
        settings: RouteSettings(name: screenName),
      ),
    );
  }
}

class TopPromotedAppsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(S.of(context).promotedAppsTopTitle),
      subtitle: Text(''),
    );
  }
}

class PromotedAppTile extends StatelessWidget {
  final PromotedApp app;

  const PromotedAppTile({Key key, this.app}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(app.title),
      subtitle: Text(app.description),
      leading: SizedBox(
        width: 45.0,
        height: 45.0,
        child: Container(color: Colors.blueAccent),
      ),
      trailing: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
          side: BorderSide(color: Colors.grey),
        ),
        onPressed: null,
        child: Text(
          S.of(context).promotedAppsPageInstallButton,
          style: TextStyle(color: Colors.green[800]),
        ),
      ),
    );
  }
}
