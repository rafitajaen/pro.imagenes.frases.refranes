import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'core/pages/load_page.dart';
import 'core/services/admob_service.dart';
import 'core/services/firebase_auth_service.dart';
import 'core/services/hive_service.dart';
import 'core/utils/my_themes.dart';
import 'core/utils/my_utils.dart';
import 'generated/l10n.dart';
import 'modules/feedback/providers/step_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AdMobService.initialize();
  await HiveService.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  void initState() {
    super.initState();
    AdMobService.loadAds();
  }

  @override
  Widget build(BuildContext context) {
    MyUtils.setPreferredOrientation();

    return MultiProvider(
      providers: [
        Provider<FirebaseAuthService>(create: (_) => FirebaseAuthService()),
        ChangeNotifierProvider<StepProvider>(create: (_) => StepProvider()),
        Provider<FirebaseAnalytics>.value(value: analytics),
        Provider<FirebaseAnalyticsObserver>.value(value: observer),
      ],
      child: MaterialApp(
        title: 'Refranes Pro',
        theme: MyThemes.lightTheme,
        home: LoadPage(),
        navigatorObservers: <NavigatorObserver>[observer],
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }

  @override
  void dispose() async {
    await HiveService.close();
    AdMobService.disposeAds();
    super.dispose();
  }
}
