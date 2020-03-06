import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/pages/home_page.dart';
import 'core/services/analytics_service.dart';
import 'core/services/firebase_auth_service.dart';
import 'modules/login/pages/login_page.dart';

class AuthRedirect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    developer.log('Auth Redirect Rebuild', name: 'pro.arae.AuthRedirect');
    final FirebaseAuthService authService =
        Provider.of<FirebaseAuthService>(context, listen: false);

    return StreamBuilder<User>(
      stream: authService.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final user = snapshot.data;

          if (user != null) {
            AnalyticsService.homePageCurrentScreen(context);
            return HomePage(user: user);
          } else {
            AnalyticsService.loginPageCurrentScreen(context);
            return LoginPage();
          }
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
