import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'analytics_service.dart';
import 'firebase_auth_service.dart';

class NavigateTo {
  static const _kSignOut = 'sign_out';

  static signOut(BuildContext context, {bool popBefore = false}) {
    if (popBefore) Navigator.of(context).pop();
    AnalyticsService.setCurrentScreen(context, _kSignOut);
    Provider.of<FirebaseAuthService>(context, listen: false).signOut();
  }
}
