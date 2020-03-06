// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S(this.localeName);
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S(localeName);
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  final String localeName;

  String get appTitle {
    return Intl.message(
      'Proverbs.',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  String get appSubtitle {
    return Intl.message(
      'Discover. Download.',
      name: 'appSubtitle',
      desc: '',
      args: [],
    );
  }

  String get appSubtitleSecondLine {
    return Intl.message(
      'Share.',
      name: 'appSubtitleSecondLine',
      desc: '',
      args: [],
    );
  }

  String get appDirectoryName {
    return Intl.message(
      'Proverbs',
      name: 'appDirectoryName',
      desc: '',
      args: [],
    );
  }

  String get loginPageSignInWithGoogle {
    return Intl.message(
      'Sign In with Google Account',
      name: 'loginPageSignInWithGoogle',
      desc: '',
      args: [],
    );
  }

  String get loginPageSignInAnonymously {
    return Intl.message(
      'START',
      name: 'loginPageSignInAnonymously',
      desc: '',
      args: [],
    );
  }

  String get homePageTitleDiscover {
    return Intl.message(
      'Discover',
      name: 'homePageTitleDiscover',
      desc: '',
      args: [],
    );
  }

  String get rewardPageTitle {
    return Intl.message(
      'Rewards',
      name: 'rewardPageTitle',
      desc: '',
      args: [],
    );
  }

  String get rewardPageInstructions {
    return Intl.message(
      'Complete the following actions to get rewards so you can download your favorite proverbs',
      name: 'rewardPageInstructions',
      desc: '',
      args: [],
    );
  }

  String get rewardPageReward {
    return Intl.message(
      'Reward',
      name: 'rewardPageReward',
      desc: '',
      args: [],
    );
  }

  String get rewardPageCompleted {
    return Intl.message(
      'Completed',
      name: 'rewardPageCompleted',
      desc: '',
      args: [],
    );
  }

  String get rewardPageOf {
    return Intl.message(
      'of',
      name: 'rewardPageOf',
      desc: '',
      args: [],
    );
  }

  String get favoritesPageTitle {
    return Intl.message(
      'Favorites',
      name: 'favoritesPageTitle',
      desc: '',
      args: [],
    );
  }

  String get languagePageTitle {
    return Intl.message(
      'Languages',
      name: 'languagePageTitle',
      desc: '',
      args: [],
    );
  }

  String get languagesPageShowProverbsIn {
    return Intl.message(
      'Show Proverbs in:',
      name: 'languagesPageShowProverbsIn',
      desc: '',
      args: [],
    );
  }

  String get detailPageBack {
    return Intl.message(
      'BACK',
      name: 'detailPageBack',
      desc: '',
      args: [],
    );
  }

  String get detailPageMeaning {
    return Intl.message(
      'Meaning',
      name: 'detailPageMeaning',
      desc: '',
      args: [],
    );
  }

  String get tagNamesAll {
    return Intl.message(
      'All',
      name: 'tagNamesAll',
      desc: '',
      args: [],
    );
  }

  String get tagNamesPopular {
    return Intl.message(
      'Popular',
      name: 'tagNamesPopular',
      desc: '',
      args: [],
    );
  }

  String get tagNamesNewest {
    return Intl.message(
      'Newest',
      name: 'tagNamesNewest',
      desc: '',
      args: [],
    );
  }

  String get tagNamesPremium {
    return Intl.message(
      'Premium',
      name: 'tagNamesPremium',
      desc: '',
      args: [],
    );
  }

  String get drawerGetMoreCoins {
    return Intl.message(
      'Get More Coins',
      name: 'drawerGetMoreCoins',
      desc: '',
      args: [],
    );
  }

  String get drawerFavorites {
    return Intl.message(
      'Favorites',
      name: 'drawerFavorites',
      desc: '',
      args: [],
    );
  }

  String get drawerNewApps {
    return Intl.message(
      'New Apps',
      name: 'drawerNewApps',
      desc: '',
      args: [],
    );
  }

  String get drawerRateApp {
    return Intl.message(
      'Rate App',
      name: 'drawerRateApp',
      desc: '',
      args: [],
    );
  }

  String get drawerShareApp {
    return Intl.message(
      'Share App',
      name: 'drawerShareApp',
      desc: '',
      args: [],
    );
  }

  String get drawerFeedback {
    return Intl.message(
      'Feedback',
      name: 'drawerFeedback',
      desc: '',
      args: [],
    );
  }

  String get drawerLanguages {
    return Intl.message(
      'Languages',
      name: 'drawerLanguages',
      desc: '',
      args: [],
    );
  }

  String get drawerSignOut {
    return Intl.message(
      'Sign Out',
      name: 'drawerSignOut',
      desc: '',
      args: [],
    );
  }

  String get drawerPremiumUser {
    return Intl.message(
      'Premium User',
      name: 'drawerPremiumUser',
      desc: '',
      args: [],
    );
  }

  String get rewardsConsecutivesDays {
    return Intl.message(
      'Consecutive Days Connected',
      name: 'rewardsConsecutivesDays',
      desc: '',
      args: [],
    );
  }

  String get rewardsShareProverb {
    return Intl.message(
      'Share Proverbs',
      name: 'rewardsShareProverb',
      desc: '',
      args: [],
    );
  }

  String get rewardsDownloadProverb {
    return Intl.message(
      'Download Proverbs',
      name: 'rewardsDownloadProverb',
      desc: '',
      args: [],
    );
  }

  String get rewardsAddFavoriteProverb {
    return Intl.message(
      'Add Favorite Proverbs',
      name: 'rewardsAddFavoriteProverb',
      desc: '',
      args: [],
    );
  }

  String get rewardsRateApp {
    return Intl.message(
      'Rate App',
      name: 'rewardsRateApp',
      desc: '',
      args: [],
    );
  }

  String get rewardsFeedback {
    return Intl.message(
      'Give us Feedback',
      name: 'rewardsFeedback',
      desc: '',
      args: [],
    );
  }

  String get rewardsShareApp {
    return Intl.message(
      'Share App',
      name: 'rewardsShareApp',
      desc: '',
      args: [],
    );
  }

  String get detailPageLikeButton {
    return Intl.message(
      'Like',
      name: 'detailPageLikeButton',
      desc: '',
      args: [],
    );
  }

  String get detailPageShareButton {
    return Intl.message(
      'Share',
      name: 'detailPageShareButton',
      desc: '',
      args: [],
    );
  }

  String get detailPageDownloadButton {
    return Intl.message(
      'Download',
      name: 'detailPageDownloadButton',
      desc: '',
      args: [],
    );
  }

  String get shareCTA {
    return Intl.message(
      'Download Proverbs in Google Play',
      name: 'shareCTA',
      desc: '',
      args: [],
    );
  }

  String get shareSubject {
    return Intl.message(
      'I want to share a Proverb with you!',
      name: 'shareSubject',
      desc: '',
      args: [],
    );
  }

  String get addFavoriteDialogTitle {
    return Intl.message(
      'Add to Favorites',
      name: 'addFavoriteDialogTitle',
      desc: '',
      args: [],
    );
  }

  String addFavoriteDialogDescription(dynamic coinsRewarded, dynamic currentPoints) {
    return Intl.message(
      'Congratulations! You have earned $coinsRewarded Coins by add $currentPoints Proverbs to Favorites.\n\nDo you want to double your reward?.',
      name: 'addFavoriteDialogDescription',
      desc: '',
      args: [coinsRewarded, currentPoints],
    );
  }

  String shareProverbsDialogTitle(dynamic currentPoints) {
    return Intl.message(
      'Share $currentPoints Proverbs',
      name: 'shareProverbsDialogTitle',
      desc: '',
      args: [currentPoints],
    );
  }

  String shareProverbsDialogDescription(dynamic coinsRewarded, dynamic currentPoints) {
    return Intl.message(
      'Congratulations! You have earned $coinsRewarded Coins by share $currentPoints Proverbs.\n\nDo you want to double your reward?.',
      name: 'shareProverbsDialogDescription',
      desc: '',
      args: [coinsRewarded, currentPoints],
    );
  }

  String consecutiveDaysDialogTitle(dynamic currentPoints) {
    return Intl.message(
      '$currentPoints Consecutive Days Connected',
      name: 'consecutiveDaysDialogTitle',
      desc: '',
      args: [currentPoints],
    );
  }

  String consecutiveDaysDialogDescription(dynamic coinsRewarded, dynamic currentPoints) {
    return Intl.message(
      'Congratulations! You have earned $coinsRewarded Coins for connecting $currentPoints consecutive days to our App.\n\nDo you want to double your reward?.',
      name: 'consecutiveDaysDialogDescription',
      desc: '',
      args: [coinsRewarded, currentPoints],
    );
  }

  String downloadProverbsDialogTitle(dynamic currentPoints) {
    return Intl.message(
      'Download $currentPoints Proverbs',
      name: 'downloadProverbsDialogTitle',
      desc: '',
      args: [currentPoints],
    );
  }

  String downloadProverbsDialogDescription(dynamic coinsRewarded, dynamic currentPoints) {
    return Intl.message(
      'Congratulations! You have earned $coinsRewarded Coins by download $currentPoints Proverbs.\n\nDo you want to double your reward?.',
      name: 'downloadProverbsDialogDescription',
      desc: '',
      args: [coinsRewarded, currentPoints],
    );
  }

  String get feedbackDialogTitle {
    return Intl.message(
      'Survey Completed',
      name: 'feedbackDialogTitle',
      desc: '',
      args: [],
    );
  }

  String feedbackDialogDescription(dynamic coinsRewarded) {
    return Intl.message(
      'Congratulations! You have earned $coinsRewarded Coins to helping us to improve our App.\n\nDo you want to double your reward?.',
      name: 'feedbackDialogDescription',
      desc: '',
      args: [coinsRewarded],
    );
  }

  String get rateAppDialogTitle {
    return Intl.message(
      'App Rated',
      name: 'rateAppDialogTitle',
      desc: '',
      args: [],
    );
  }

  String rateAppDialogDescription(dynamic coinsRewarded) {
    return Intl.message(
      'Congratulations! You have earned $coinsRewarded Coins for rating our App.\n\nDo you want to double your reward?.',
      name: 'rateAppDialogDescription',
      desc: '',
      args: [coinsRewarded],
    );
  }

  String get shareAppDialogTitle {
    return Intl.message(
      'App Shared',
      name: 'shareAppDialogTitle',
      desc: '',
      args: [],
    );
  }

  String shareAppDialogDescription(dynamic coinsRewarded) {
    return Intl.message(
      'Congratulations! You have earned $coinsRewarded Coins for sharing our App.\n\nDo you want to double your reward?.',
      name: 'shareAppDialogDescription',
      desc: '',
      args: [coinsRewarded],
    );
  }

  String get dialogButtonDoubleCoins {
    return Intl.message(
      'Get Double Coins',
      name: 'dialogButtonDoubleCoins',
      desc: '',
      args: [],
    );
  }

  String get dialogButtonOK {
    return Intl.message(
      'Okay',
      name: 'dialogButtonOK',
      desc: '',
      args: [],
    );
  }

  String get needMoreCoinsDialogTitle {
    return Intl.message(
      'You need more Coins',
      name: 'needMoreCoinsDialogTitle',
      desc: '',
      args: [],
    );
  }

  String needMoreCoinsDialogDescription(dynamic coinsNeeded) {
    return Intl.message(
      'You need to get at least $coinsNeeded more Coins to be able to download this Proverb.',
      name: 'needMoreCoinsDialogDescription',
      desc: '',
      args: [coinsNeeded],
    );
  }

  String get needMoreCoinsDialogButtonText {
    return Intl.message(
      'OKAY',
      name: 'needMoreCoinsDialogButtonText',
      desc: '',
      args: [],
    );
  }

  String get imageSaveSuccesfullyDialogTitle {
    return Intl.message(
      'File Saved Successfully',
      name: 'imageSaveSuccesfullyDialogTitle',
      desc: '',
      args: [],
    );
  }

  String get imageSaveSuccesfullyDialogDescription {
    return Intl.message(
      'You will find it in the "Proverbs" folder, inside your gallery.',
      name: 'imageSaveSuccesfullyDialogDescription',
      desc: '',
      args: [],
    );
  }

  String get imageSaveSuccesfullyDialogButtonText {
    return Intl.message(
      'THANKS!',
      name: 'imageSaveSuccesfullyDialogButtonText',
      desc: '',
      args: [],
    );
  }

  String get imageSaveErrorDialogTitle {
    return Intl.message(
      'Download Failed',
      name: 'imageSaveErrorDialogTitle',
      desc: '',
      args: [],
    );
  }

  String get imageSaveErrorDialogDescription {
    return Intl.message(
      'An error occurred while downloading.\n\nCheck that you have enough space on your device.',
      name: 'imageSaveErrorDialogDescription',
      desc: '',
      args: [],
    );
  }

  String get imageSaveErrorDialogButtonText {
    return Intl.message(
      'I will try again!',
      name: 'imageSaveErrorDialogButtonText',
      desc: '',
      args: [],
    );
  }

  String get promotedAppsPageTitle {
    return Intl.message(
      'Brand New Apps',
      name: 'promotedAppsPageTitle',
      desc: '',
      args: [],
    );
  }

  String get promotedAppsPageInstallButton {
    return Intl.message(
      'INSTALL',
      name: 'promotedAppsPageInstallButton',
      desc: '',
      args: [],
    );
  }

  String get promotedAppsTopTitle {
    return Intl.message(
      'Download our brand new Apps',
      name: 'promotedAppsTopTitle',
      desc: '',
      args: [],
    );
  }

  String get feedbackPageTitle {
    return Intl.message(
      'Feedback',
      name: 'feedbackPageTitle',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepZeroQuestion {
    return Intl.message(
      'Answer the following questions',
      name: 'feedbackStepZeroQuestion',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepZeroSubQuestion {
    return Intl.message(
      'It is very easy to be honest!\n\nYour opinion will help us improve our App.\n\nAs a reward, at the end of the survey you will receive a mountain of Coins to continue downloading your favorite Proverbs.',
      name: 'feedbackStepZeroSubQuestion',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepOneQuestion {
    return Intl.message(
      'With what score would you rate our App?',
      name: 'feedbackStepOneQuestion',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepTwoQuestion {
    return Intl.message(
      'Rate the quality of the Proverbs:',
      name: 'feedbackStepTwoQuestion',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepThreeQuestion {
    return Intl.message(
      'Rate the quality of the images:',
      name: 'feedbackStepThreeQuestion',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepFourQuestion {
    return Intl.message(
      'Do you have enough Proverbs available in the App?',
      name: 'feedbackStepFourQuestion',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepFiveQuestion {
    return Intl.message(
      'Rate the quantity of ads in our App',
      name: 'feedbackStepFiveQuestion',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepSixQuestion {
    return Intl.message(
      'You are done!',
      name: 'feedbackStepSixQuestion',
      desc: '',
      args: [],
    );
  }

  String get feedbackStepSixSubQuestion {
    return Intl.message(
      'We already have the developers working. It\'s time to pay off our debts!\n\nAs a reward for your help, you will receive 200 coins to continue downloading your favorite proverbs.',
      name: 'feedbackStepSixSubQuestion',
      desc: '',
      args: [],
    );
  }

  String get noFavoritesTitle {
    return Intl.message(
      'Your Favorites List is empty',
      name: 'noFavoritesTitle',
      desc: '',
      args: [],
    );
  }

  String get noFavoritesSubtitle {
    return Intl.message(
      '\nUse the heart icon at the top right of each Proverb to add it to your favorites list.',
      name: 'noFavoritesSubtitle',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer1one {
    return Intl.message(
      'Terrible. I do not like.',
      name: 'ratingsAnswer1one',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer1two {
    return Intl.message(
      'Bad. You need to improve some aspects.',
      name: 'ratingsAnswer1two',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer1three {
    return Intl.message(
      'Regular. It is a normal App.',
      name: 'ratingsAnswer1three',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer1four {
    return Intl.message(
      'Good. I like it.',
      name: 'ratingsAnswer1four',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer1five {
    return Intl.message(
      'Excellent. I love this App.',
      name: 'ratingsAnswer1five',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer2one {
    return Intl.message(
      'Terrible. I do not like.',
      name: 'ratingsAnswer2one',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer2two {
    return Intl.message(
      'Bad. It needs effort.',
      name: 'ratingsAnswer2two',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer2three {
    return Intl.message(
      'Regular. They are normal.',
      name: 'ratingsAnswer2three',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer2four {
    return Intl.message(
      'Good. I like them.',
      name: 'ratingsAnswer2four',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer2five {
    return Intl.message(
      'Excellent. I love them.',
      name: 'ratingsAnswer2five',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer4one {
    return Intl.message(
      'They are very few, I want many more.',
      name: 'ratingsAnswer4one',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer4two {
    return Intl.message(
      'Some more would not hurt.',
      name: 'ratingsAnswer4two',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer4three {
    return Intl.message(
      'It has the necessary ones.',
      name: 'ratingsAnswer4three',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer4four {
    return Intl.message(
      'There is plenty.',
      name: 'ratingsAnswer4four',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer4five {
    return Intl.message(
      'They are more than I need.',
      name: 'ratingsAnswer4five',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer5one {
    return Intl.message(
      'They are more than I allow.',
      name: 'ratingsAnswer5one',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer5two {
    return Intl.message(
      'There is plenty.',
      name: 'ratingsAnswer5two',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer5three {
    return Intl.message(
      'It has the necessary ones.',
      name: 'ratingsAnswer5three',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer5four {
    return Intl.message(
      'Some more would not hurt.',
      name: 'ratingsAnswer5four',
      desc: '',
      args: [],
    );
  }

  String get ratingsAnswer5five {
    return Intl.message(
      'It has the perfect amount.',
      name: 'ratingsAnswer5five',
      desc: '',
      args: [],
    );
  }

  String get feedbackButtonStart {
    return Intl.message(
      'START',
      name: 'feedbackButtonStart',
      desc: '',
      args: [],
    );
  }

  String get feedbackButtonNext {
    return Intl.message(
      'NEXT',
      name: 'feedbackButtonNext',
      desc: '',
      args: [],
    );
  }

  String get feedbackButtonSendFeedback {
    return Intl.message(
      'SEND FEEDBACK',
      name: 'feedbackButtonSendFeedback',
      desc: '',
      args: [],
    );
  }

  String get feedbackButtonGiveMeCoins {
    return Intl.message(
      'GIVE ME THE COINS!',
      name: 'feedbackButtonGiveMeCoins',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale('en', ''), Locale('es', ''),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}