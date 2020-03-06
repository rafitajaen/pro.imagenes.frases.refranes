
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../../core/services/analytics_service.dart';
import '../../../core/services/firebase_auth_service.dart';
import '../../../core/utils/my_themes.dart';
import '../../../generated/l10n.dart';
import '../../arae_app_bar/widgets/arae_app_bar.dart';
import '../providers/step_provider.dart';

class FeedbackPage extends StatelessWidget {
  final User user;
  

  FeedbackPage({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<StepProvider>(context, listen: false).saveFeedbackUser(user);

    return Scaffold(
      appBar: AraeAppBar(
        title: S.of(context).feedbackPageTitle,
        showBack: false,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          FeedbackProgressBarTile(),
          SizedBox(height: MediaQuery.of(context).size.height / 7),
          FeedbackQuestionTile(),
          SizedBox(height: 12.0),
          FeedbackStarsRatingsTile(),
          SizedBox(height: 12.0),
          FeedbackButtonTile(),
        ],
      ),
    );
  }

  static navigateTo(BuildContext context,
      {@required User user, bool popBefore = false}) {
    const String screenName = 'feedback_page';
    if (popBefore) Navigator.of(context).pop();
    AnalyticsService.setCurrentScreen(context, screenName);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FeedbackPage(user: user),
        settings: RouteSettings(name: screenName),
      ),
    );
  }
}

class FeedbackProgressBarTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<StepProvider>(builder: (context, stepProvider, _) {
      return ListTile(
        title: LinearPercentIndicator(
          lineHeight: 12.0,
          progressColor: MyThemes.accentColor,
          backgroundColor: MyThemes.accentColorLight,
          percent: stepProvider.getPercent(),
        ),
        trailing: Text(
          stepProvider.percentToString(),
          style: TextStyle(color: MyThemes.thirdColor),
        ),
      );
    });
  }
}

class FeedbackQuestionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<StepProvider>(
      builder: (context, stepProvider, _) {
        return ListTile(
          title: Text(
            stepProvider.getQuestionTitle(context),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: MyThemes.secondaryColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Text(
              stepProvider.getQuestionSubtitle(context),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MyThemes.thirdColor,
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      },
    );
  }
}

class FeedbackStarsRatingsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<StepProvider>(
      builder: (context, stepProvider, _) {
        if (stepProvider.showStarsRatings()) {
          return ListTile(
            title: Align(
              alignment: Alignment.center,
              child: RatingBar(
                unratedColor: Colors.grey[300],
                initialRating: stepProvider.rating,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (onRating) {
                  stepProvider.setRating(onRating);
                },
              ),
            ),
            subtitle: Text(
              stepProvider.getRatingText(context),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[400]),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}

class FeedbackButtonTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<StepProvider>(
      builder: (context, stepProvider, _) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.15,
          ),
          child: RaisedButton(
            color: MyThemes.accentColor,
            child: Text(
              stepProvider.getButtonText(context),
              style: TextStyle(
                color: MyThemes.accentColorConstrast,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: stepProvider.isButtonActive()
                ? () => stepProvider.getButtonFunction(context)
                : null,
          ),
        );
      },
    );
  }
}
