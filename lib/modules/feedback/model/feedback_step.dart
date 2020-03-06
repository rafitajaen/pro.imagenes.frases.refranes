import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'feedback_button.dart';
import 'feedback_ratings.dart';

class FeedbackStep {
  final String question;
  final String subquestion;
  final FeedbackRatings ratings;
  final FeedbackButton button;

  FeedbackStep({
    @required this.question,
    @required this.subquestion,
    @required this.ratings,
    @required this.button,
  });

  factory FeedbackStep.zero(BuildContext context) => FeedbackStep(
        question: S.of(context).feedbackStepZeroQuestion,
        subquestion: S.of(context).feedbackStepZeroSubQuestion,
        ratings: FeedbackRatings.blank(),
        button: FeedbackButton.zero(context),
      );
  factory FeedbackStep.one(BuildContext context) => FeedbackStep(
        question: S.of(context).feedbackStepOneQuestion,
        subquestion: '',
        ratings: FeedbackRatings.answer1(context),
        button: FeedbackButton.one(context),
      );
  factory FeedbackStep.two(BuildContext context) => FeedbackStep(
        question: S.of(context).feedbackStepTwoQuestion,
        subquestion: '',
        ratings: FeedbackRatings.answer2(context),
        button: FeedbackButton.two(context),
      );
  factory FeedbackStep.three(BuildContext context) => FeedbackStep(
        question: S.of(context).feedbackStepThreeQuestion,
        subquestion: '',
        ratings: FeedbackRatings.answer2(context),
        button: FeedbackButton.three(context),
      );
  factory FeedbackStep.four(BuildContext context) => FeedbackStep(
        question: S.of(context).feedbackStepFourQuestion,
        subquestion: '',
        ratings: FeedbackRatings.answer4(context),
        button: FeedbackButton.four(context),
      );
  factory FeedbackStep.five(BuildContext context) => FeedbackStep(
        question: S.of(context).feedbackStepFiveQuestion,
        subquestion: '',
        ratings: FeedbackRatings.answer5(context),
        button: FeedbackButton.five(context),
      );
  factory FeedbackStep.six(BuildContext context) => FeedbackStep(
        question: S.of(context).feedbackStepSixQuestion,
        subquestion: S.of(context).feedbackStepSixSubQuestion,
        ratings: FeedbackRatings.blank(),
        button: FeedbackButton.six(context),
      );
  factory FeedbackStep.blank() => FeedbackStep(
        question: '',
        subquestion: '',
        ratings: FeedbackRatings.blank(),
        button: FeedbackButton.blank(),
      );
}
