import 'dart:developer' as developer;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../core/services/firebase_auth_service.dart';
import '../model/feedback_step.dart';

enum Steps { zero, one, two, three, four, five, six }

class StepProvider with ChangeNotifier {
  Steps _currentStep = Steps.zero;
  double _rating = 0.0;
  Map<String, dynamic> feedback = {};

  Steps get currentStep => _currentStep;
  double get rating => _rating;

  int get totalSteps => Steps.values.length;

  void next() {
    if (_currentStep.index < totalSteps - 1) {
      _currentStep = Steps.values[currentStep.index + 1];
      notifyListeners();
    }
  }

  void clearRating() {
    _rating = 0;
    notifyListeners();
  }

  void setRating(double onRating) {
    _rating = onRating;
    notifyListeners();
  }

  double getPercent() {
    return currentStep.index / (totalSteps - 1);
  }

  String percentToString() {
    return '${currentStep.index}/${totalSteps - 1}';
  }

  int getRoundedRating() {
    return rating.round();
  }

  int getCurrentStepIndex() {
    return currentStep.index;
  }

  String getQuestionTitle(BuildContext context) {
    return getCurrentStep(context).question;
  }

  String getQuestionSubtitle(BuildContext context) {
    return getCurrentStep(context).subquestion;
  }

  String getButtonText(BuildContext context) {
    return getCurrentStep(context).button.text;
  }

  Function getButtonFunction(BuildContext context) {
    return getCurrentStep(context).button.function(context);
  }

  bool isQuestion() {
    return (currentStep.index == 1 ||
        currentStep.index == 2 ||
        currentStep.index == 3 ||
        currentStep.index == 4 ||
        currentStep.index == 5);
  }

  bool isButtonActive() {
    bool output = true;

    if (isQuestion()) {
      if (rating < 1) output = false;
    }

    return output;
  }

  String getRatingText(BuildContext context) {
    int roundedRating = rating.round();
    developer.log('roundedRating: $roundedRating',
        name: 'pro.arae.StepProvider.getRatingText');
    if (roundedRating == 0) {
      return getCurrentStep(context).ratings.zero;
    } else if (roundedRating == 1) {
      return getCurrentStep(context).ratings.one;
    } else if (roundedRating == 2) {
      return getCurrentStep(context).ratings.two;
    } else if (roundedRating == 3) {
      return getCurrentStep(context).ratings.three;
    } else if (roundedRating == 4) {
      return getCurrentStep(context).ratings.four;
    } else if (roundedRating == 5) {
      return getCurrentStep(context).ratings.five;
    } else {
      return '';
    }
  }

  bool showStarsRatings() {
    switch (_currentStep) {
      case Steps.zero:
        return false;
        break;
      case Steps.one:
        return true;
        break;
      case Steps.two:
        return true;
        break;
      case Steps.three:
        return true;
        break;
      case Steps.four:
        return true;
        break;
      case Steps.five:
        return true;
        break;
      case Steps.six:
        return false;
        break;
      default:
        return false;
        break;
    }
  }

  FeedbackStep getCurrentStep(BuildContext context) {
    switch (_currentStep) {
      case Steps.zero:
        return FeedbackStep.zero(context);
        break;
      case Steps.one:
        return FeedbackStep.one(context);
        break;
      case Steps.two:
        return FeedbackStep.two(context);
        break;
      case Steps.three:
        return FeedbackStep.three(context);
        break;
      case Steps.four:
        return FeedbackStep.four(context);
        break;
      case Steps.five:
        return FeedbackStep.five(context);
        break;
      case Steps.six:
        return FeedbackStep.six(context);
        break;
      default:
        return FeedbackStep.blank();
        break;
    }
  }

  void saveFeedbackAnswer(BuildContext context) {
    int stepIndex = getCurrentStepIndex();
    feedback['04$stepIndex-question'] = getQuestionTitle(context);
    feedback['04$stepIndex-rating'] = getRatingText(context);
  }

  void saveFeedbackUser(User user) {
    feedback['00-uid'] = user.uid.toString();
    feedback['01-name'] = user.name.toString();
    feedback['02-email'] = user.email.toString();
    feedback['03-date'] = DateTime.now().toString();
  }

  sendToFirestore() {
    return Firestore.instance.runTransaction((transactionHandler) {
      return Firestore.instance
          .collection('feedback')
          .document(feedback['02-email'])
          .setData(feedback);
    }).catchError((onError) {
      developer.log('onError: $onError',
          name: 'pro.arae.StepProvider.sendToFirestore');
    });
  }
}
