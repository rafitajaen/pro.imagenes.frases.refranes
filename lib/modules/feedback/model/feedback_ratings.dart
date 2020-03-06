import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class FeedbackRatings {
  final String zero;
  final String one;
  final String two;
  final String three;
  final String four;
  final String five;

  FeedbackRatings({
    @required this.zero,
    @required this.one,
    @required this.two,
    @required this.three,
    @required this.four,
    @required this.five,
  });

  factory FeedbackRatings.answer1(BuildContext context) => FeedbackRatings(
        zero: '',
        one: S.of(context).ratingsAnswer1one,
        two: S.of(context).ratingsAnswer1two,
        three: S.of(context).ratingsAnswer1three,
        four: S.of(context).ratingsAnswer1four,
        five: S.of(context).ratingsAnswer1five,
      );

  factory FeedbackRatings.answer2(BuildContext context) => FeedbackRatings(
        zero: '',
        one: S.of(context).ratingsAnswer2one,
        two: S.of(context).ratingsAnswer2two,
        three: S.of(context).ratingsAnswer2three,
        four: S.of(context).ratingsAnswer2four,
        five: S.of(context).ratingsAnswer2five,
      );

  factory FeedbackRatings.answer4(BuildContext context) => FeedbackRatings(
        zero: '',
        one: S.of(context).ratingsAnswer4one,
        two: S.of(context).ratingsAnswer4two,
        three: S.of(context).ratingsAnswer4three,
        four: S.of(context).ratingsAnswer4four,
        five: S.of(context).ratingsAnswer4five,
      );
  factory FeedbackRatings.answer5(BuildContext context) => FeedbackRatings(
        zero: '',
        one: S.of(context).ratingsAnswer5one,
        two: S.of(context).ratingsAnswer5two,
        three: S.of(context).ratingsAnswer5three,
        four: S.of(context).ratingsAnswer5four,
        five: S.of(context).ratingsAnswer5five,
      );

  factory FeedbackRatings.blank() => FeedbackRatings(
        zero: '',
        one: '',
        two: '',
        three: '',
        four: '',
        five: '',
      );
}
