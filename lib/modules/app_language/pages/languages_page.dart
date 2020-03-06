import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../core/services/analytics_service.dart';
import '../../../generated/l10n.dart';
import '../../arae_app_bar/widgets/arae_app_bar.dart';
import '../model/app_language.dart';
import '../model/languages.dart';
import '../services/app_language_service.dart';

class LanguagesPage extends StatefulWidget {
  @override
  _LanguagesPageState createState() => _LanguagesPageState();

  static navigateTo(BuildContext context, {bool popBefore = false}) {
    const String screenName = 'languages_page';

    if (popBefore) Navigator.of(context).pop();
    AnalyticsService.setCurrentScreen(context, screenName);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LanguagesPage(),
        settings: RouteSettings(name: screenName),
      ),
    );
  }
}

class _LanguagesPageState extends State<LanguagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AraeAppBar(
        title: S.of(context).languagePageTitle,
      ),
      body: ValueListenableBuilder(
        valueListenable: AppLanguageService.getValueListenable(),
        builder: (context, Box<AppLanguage> box, widget) {
          return ListView.builder(
            itemCount: Languages.values.length,
            itemBuilder: (context, index) {
              Languages language = Languages.values[index];

              return RadioListTile(
                title: Text(AppLanguageService.nameLanguages(language)),
                groupValue: AppLanguageService.getAppLanguageValue(box),
                value: language,
                onChanged: (Languages languageSelected) {
                  setState(() {
                    AppLanguageService.update(context, box, languageSelected);
                  });
                },
              );
            },
          );
        },
      ),
    );
  }
}
