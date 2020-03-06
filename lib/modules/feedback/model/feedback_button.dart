import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../rewards/services/rewards_service.dart';
import '../providers/step_provider.dart';

class FeedbackButton {
  final String text;
  final Function function;

  FeedbackButton({@required this.text, @required this.function});

  factory FeedbackButton.zero(BuildContext context) => FeedbackButton(
        text: S.of(context).feedbackButtonStart,
        function: (context) {
          StepProvider stepProvider =
              Provider.of<StepProvider>(context, listen: false);

          stepProvider.clearRating();
          stepProvider.next();
        },
      );
  factory FeedbackButton.one(BuildContext context) => FeedbackButton(
        text: S.of(context).feedbackButtonNext,
        function: (context) {
          StepProvider stepProvider =
              Provider.of<StepProvider>(context, listen: false);
          stepProvider.saveFeedbackAnswer(context);

          stepProvider.clearRating();
          stepProvider.next();
        },
      );
  factory FeedbackButton.two(BuildContext context) => FeedbackButton(
        text: S.of(context).feedbackButtonNext,
        function: (context) {
          StepProvider stepProvider =
              Provider.of<StepProvider>(context, listen: false);
          stepProvider.saveFeedbackAnswer(context);

          stepProvider.clearRating();
          stepProvider.next();
        },
      );
  factory FeedbackButton.three(BuildContext context) => FeedbackButton(
        text: S.of(context).feedbackButtonNext,
        function: (context) {
          StepProvider stepProvider =
              Provider.of<StepProvider>(context, listen: false);
          stepProvider.saveFeedbackAnswer(context);

          stepProvider.clearRating();
          stepProvider.next();
        },
      );
  factory FeedbackButton.four(BuildContext context) => FeedbackButton(
        text: S.of(context).feedbackButtonNext,
        function: (context) {
          StepProvider stepProvider =
              Provider.of<StepProvider>(context, listen: false);
          stepProvider.saveFeedbackAnswer(context);

          stepProvider.clearRating();
          stepProvider.next();
        },
      );
  factory FeedbackButton.five(BuildContext context) => FeedbackButton(
        text: S.of(context).feedbackButtonSendFeedback,
        function: (context) {
          StepProvider stepProvider =
              Provider.of<StepProvider>(context, listen: false);

          stepProvider.saveFeedbackAnswer(context);
          stepProvider.sendToFirestore();
          stepProvider.clearRating();
          stepProvider.next();
        },
      );
  factory FeedbackButton.six(BuildContext context) => FeedbackButton(
        text: S.of(context).feedbackButtonGiveMeCoins,
        function: (context) {
          Navigator.of(context).pop();
          RewardsService.updateFeedback(context);
        },
      );
  factory FeedbackButton.blank() => FeedbackButton(
        text: '',
        function: (context) {},
      );
}
