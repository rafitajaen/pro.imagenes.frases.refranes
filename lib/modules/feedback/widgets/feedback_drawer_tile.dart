import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../core/services/firebase_auth_service.dart';
import '../../../generated/l10n.dart';
import '../../app_language/services/app_language_service.dart';
import '../../arae_drawer/widgets/drawer_tile.dart';
import '../../rewards/model/rewards/rewards.dart';
import '../../rewards/services/rewards_service.dart';
import '../pages/feedback_page.dart';

class FeedbackDrawerTile extends StatelessWidget {
  final User user;

  const FeedbackDrawerTile({Key key, @required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppLanguageService.shuffle();
    return ValueListenableBuilder(
      valueListenable: RewardsService.getValueListenable(),
      builder: (context, Box<Rewards> box, widget) {
        bool isComplete = RewardsService.isFeedbackCompleted();
        if (isComplete) {
          return Container();
        } else {
          return DrawerTile(
            title: S.of(context).drawerFeedback,
            onTap: () =>
                FeedbackPage.navigateTo(context, user: user, popBefore: true),
          );
        }
      },
    );
  }
}
