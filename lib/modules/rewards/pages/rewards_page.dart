import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../core/services/analytics_service.dart';
import '../../../core/utils/my_themes.dart';
import '../../../generated/l10n.dart';
import '../../app_language/services/app_language_service.dart';
import '../../arae_app_bar/widgets/arae_app_bar.dart';
import '../../coins/widgets/coins_value.dart';
import '../model/achievement/achievement.dart';
import '../model/rewards/rewards.dart';
import '../services/rewards_service.dart';

class RewardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppLanguageService.shuffle();
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AraeAppBar(title: S.of(context).rewardPageTitle),
      body: ValueListenableBuilder(
        valueListenable: RewardsService.getValueListenable(),
        builder: (context, Box<Rewards> box, widget) {
          List<Achievement> rewards = RewardsService.getValue(box);
          return ListView.builder(
            itemCount: rewards.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return TopRewardsPage();
              } else {
                return RewardCard(achievement: rewards[index - 1]);
              }
            },
          );
        },
      ),
    );
  }

  static navigateTo(BuildContext context, {bool popBefore = false}) {
    const screenName = 'rewards_page';

    if (popBefore) Navigator.of(context).pop();
    AnalyticsService.setCurrentScreen(context, screenName);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RewardsPage(),
        settings: RouteSettings(name: screenName),
      ),
    );
  }
}

class TopRewardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
      child: Text(
        S.of(context).rewardPageInstructions,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
      ),
    );
  }
}

class RewardCard extends StatelessWidget {
  final Achievement achievement;

  const RewardCard({Key key, this.achievement}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isComplete = achievement.isCompleted();
    return Container(
      margin: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
      child: Card(
        elevation: 4.0,
        color: Colors.white,
        child: ListTile(
          title: Text(
            achievement.getTitle(context),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: MyThemes.primaryTextColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Padding(
            padding: EdgeInsets.all(15.0),
            child: new LinearPercentIndicator(
              //width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: achievement.pointsPercent(),
              center: isComplete
                  ? Text(
                      S.of(context).rewardPageCompleted,
                      style: TextStyle(color: MyThemes.primaryTextColor),
                    )
                  : Text(
                      "${achievement.currentPoints} ${S.of(context).rewardPageOf} ${achievement.totalPoints}",
                      style: TextStyle(color: MyThemes.primaryTextColor),
                    ),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.greenAccent,
              backgroundColor: Colors.grey[200],
            ),
          ),
          trailing: Container(
            //color:Colors.lime,
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: isComplete ? Colors.green[100] : Colors.red[100],
              borderRadius: BorderRadius.circular(8.0),
              border: isComplete
                  ? Border.all(color: Colors.green)
                  : Border.all(color: Colors.redAccent),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                isComplete
                    ? Text(
                        S.of(context).rewardPageCompleted,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: MyThemes.primaryTextColor),
                      )
                    : Text(
                        S.of(context).rewardPageReward,
                        style: TextStyle(color: MyThemes.primaryTextColor),
                      ),
                isComplete
                    ? Icon(Icons.done, color: Colors.green)
                    : CoinsValue(value: achievement.coinsRewarded)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
