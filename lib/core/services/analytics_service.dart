import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnalyticsService {

  static setCurrentScreen(BuildContext context, String screenName){
    FirebaseAnalytics analytics = Provider.of<FirebaseAnalytics>(context, listen: false);

    analytics.setCurrentScreen(screenName: screenName);
  }

  static loginPageCurrentScreen(BuildContext context){
    FirebaseAnalytics analytics = Provider.of<FirebaseAnalytics>(context, listen: false);

    analytics.setCurrentScreen(screenName: 'login_page');
  }

  static homePageCurrentScreen(BuildContext context){
    FirebaseAnalytics analytics = Provider.of<FirebaseAnalytics>(context, listen: false);

    analytics.setCurrentScreen(screenName: 'home');
  }

  static logEvent(BuildContext context){
    FirebaseAnalytics analytics = Provider.of<FirebaseAnalytics>(context, listen: false);
    analytics.logEvent(
      name: 'Evento de Prueba',
      parameters: <String, dynamic>{
        'string': 'string',
        'int': 42,
        'long': 12345678910,
        'double': 42.0,
        'bool': true,
      },
    );
  }
}