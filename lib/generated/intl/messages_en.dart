// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(coinsRewarded, currentPoints) => "Congratulations! You have earned ${coinsRewarded} Coins by add ${currentPoints} Proverbs to Favorites.\n\nDo you want to double your reward?.";

  static m1(coinsRewarded, currentPoints) => "Congratulations! You have earned ${coinsRewarded} Coins for connecting ${currentPoints} consecutive days to our App.\n\nDo you want to double your reward?.";

  static m2(currentPoints) => "${currentPoints} Consecutive Days Connected";

  static m3(coinsRewarded, currentPoints) => "Congratulations! You have earned ${coinsRewarded} Coins by download ${currentPoints} Proverbs.\n\nDo you want to double your reward?.";

  static m4(currentPoints) => "Download ${currentPoints} Proverbs";

  static m5(coinsRewarded) => "Congratulations! You have earned ${coinsRewarded} Coins to helping us to improve our App.\n\nDo you want to double your reward?.";

  static m6(coinsNeeded) => "You need to get at least ${coinsNeeded} more Coins to be able to download this Proverb.";

  static m7(coinsRewarded) => "Congratulations! You have earned ${coinsRewarded} Coins for rating our App.\n\nDo you want to double your reward?.";

  static m8(coinsRewarded) => "Congratulations! You have earned ${coinsRewarded} Coins for sharing our App.\n\nDo you want to double your reward?.";

  static m9(coinsRewarded, currentPoints) => "Congratulations! You have earned ${coinsRewarded} Coins by share ${currentPoints} Proverbs.\n\nDo you want to double your reward?.";

  static m10(currentPoints) => "Share ${currentPoints} Proverbs";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "addFavoriteDialogDescription" : m0,
    "addFavoriteDialogTitle" : MessageLookupByLibrary.simpleMessage("Add to Favorites"),
    "appDirectoryName" : MessageLookupByLibrary.simpleMessage("Proverbs"),
    "appSubtitle" : MessageLookupByLibrary.simpleMessage("Discover. Download."),
    "appSubtitleSecondLine" : MessageLookupByLibrary.simpleMessage("Share."),
    "appTitle" : MessageLookupByLibrary.simpleMessage("Proverbs."),
    "consecutiveDaysDialogDescription" : m1,
    "consecutiveDaysDialogTitle" : m2,
    "detailPageBack" : MessageLookupByLibrary.simpleMessage("BACK"),
    "detailPageDownloadButton" : MessageLookupByLibrary.simpleMessage("Download"),
    "detailPageLikeButton" : MessageLookupByLibrary.simpleMessage("Like"),
    "detailPageMeaning" : MessageLookupByLibrary.simpleMessage("Meaning"),
    "detailPageShareButton" : MessageLookupByLibrary.simpleMessage("Share"),
    "dialogButtonDoubleCoins" : MessageLookupByLibrary.simpleMessage("Get Double Coins"),
    "dialogButtonOK" : MessageLookupByLibrary.simpleMessage("Okay"),
    "downloadProverbsDialogDescription" : m3,
    "downloadProverbsDialogTitle" : m4,
    "drawerFavorites" : MessageLookupByLibrary.simpleMessage("Favorites"),
    "drawerFeedback" : MessageLookupByLibrary.simpleMessage("Feedback"),
    "drawerGetMoreCoins" : MessageLookupByLibrary.simpleMessage("Get More Coins"),
    "drawerLanguages" : MessageLookupByLibrary.simpleMessage("Languages"),
    "drawerNewApps" : MessageLookupByLibrary.simpleMessage("New Apps"),
    "drawerPremiumUser" : MessageLookupByLibrary.simpleMessage("Premium User"),
    "drawerRateApp" : MessageLookupByLibrary.simpleMessage("Rate App"),
    "drawerShareApp" : MessageLookupByLibrary.simpleMessage("Share App"),
    "drawerSignOut" : MessageLookupByLibrary.simpleMessage("Sign Out"),
    "favoritesPageTitle" : MessageLookupByLibrary.simpleMessage("Favorites"),
    "feedbackButtonGiveMeCoins" : MessageLookupByLibrary.simpleMessage("GIVE ME THE COINS!"),
    "feedbackButtonNext" : MessageLookupByLibrary.simpleMessage("NEXT"),
    "feedbackButtonSendFeedback" : MessageLookupByLibrary.simpleMessage("SEND FEEDBACK"),
    "feedbackButtonStart" : MessageLookupByLibrary.simpleMessage("START"),
    "feedbackDialogDescription" : m5,
    "feedbackDialogTitle" : MessageLookupByLibrary.simpleMessage("Survey Completed"),
    "feedbackPageTitle" : MessageLookupByLibrary.simpleMessage("Feedback"),
    "feedbackStepFiveQuestion" : MessageLookupByLibrary.simpleMessage("Rate the quantity of ads in our App"),
    "feedbackStepFourQuestion" : MessageLookupByLibrary.simpleMessage("Do you have enough Proverbs available in the App?"),
    "feedbackStepOneQuestion" : MessageLookupByLibrary.simpleMessage("With what score would you rate our App?"),
    "feedbackStepSixQuestion" : MessageLookupByLibrary.simpleMessage("You are done!"),
    "feedbackStepSixSubQuestion" : MessageLookupByLibrary.simpleMessage("We already have the developers working. It\'s time to pay off our debts!\n\nAs a reward for your help, you will receive 200 coins to continue downloading your favorite proverbs."),
    "feedbackStepThreeQuestion" : MessageLookupByLibrary.simpleMessage("Rate the quality of the images:"),
    "feedbackStepTwoQuestion" : MessageLookupByLibrary.simpleMessage("Rate the quality of the Proverbs:"),
    "feedbackStepZeroQuestion" : MessageLookupByLibrary.simpleMessage("Answer the following questions"),
    "feedbackStepZeroSubQuestion" : MessageLookupByLibrary.simpleMessage("It is very easy to be honest!\n\nYour opinion will help us improve our App.\n\nAs a reward, at the end of the survey you will receive a mountain of Coins to continue downloading your favorite Proverbs."),
    "homePageTitleDiscover" : MessageLookupByLibrary.simpleMessage("Discover"),
    "imageSaveErrorDialogButtonText" : MessageLookupByLibrary.simpleMessage("I will try again!"),
    "imageSaveErrorDialogDescription" : MessageLookupByLibrary.simpleMessage("An error occurred while downloading.\n\nCheck that you have enough space on your device."),
    "imageSaveErrorDialogTitle" : MessageLookupByLibrary.simpleMessage("Download Failed"),
    "imageSaveSuccesfullyDialogButtonText" : MessageLookupByLibrary.simpleMessage("THANKS!"),
    "imageSaveSuccesfullyDialogDescription" : MessageLookupByLibrary.simpleMessage("You will find it in the \"Proverbs\" folder, inside your gallery."),
    "imageSaveSuccesfullyDialogTitle" : MessageLookupByLibrary.simpleMessage("File Saved Successfully"),
    "languagePageTitle" : MessageLookupByLibrary.simpleMessage("Languages"),
    "languagesPageShowProverbsIn" : MessageLookupByLibrary.simpleMessage("Show Proverbs in:"),
    "loginPageSignInAnonymously" : MessageLookupByLibrary.simpleMessage("START"),
    "loginPageSignInWithGoogle" : MessageLookupByLibrary.simpleMessage("Sign In with Google Account"),
    "needMoreCoinsDialogButtonText" : MessageLookupByLibrary.simpleMessage("OKAY"),
    "needMoreCoinsDialogDescription" : m6,
    "needMoreCoinsDialogTitle" : MessageLookupByLibrary.simpleMessage("You need more Coins"),
    "noFavoritesSubtitle" : MessageLookupByLibrary.simpleMessage("\nUse the heart icon at the top right of each Proverb to add it to your favorites list."),
    "noFavoritesTitle" : MessageLookupByLibrary.simpleMessage("Your Favorites List is empty"),
    "promotedAppsPageInstallButton" : MessageLookupByLibrary.simpleMessage("INSTALL"),
    "promotedAppsPageTitle" : MessageLookupByLibrary.simpleMessage("Brand New Apps"),
    "promotedAppsTopTitle" : MessageLookupByLibrary.simpleMessage("Download our brand new Apps"),
    "rateAppDialogDescription" : m7,
    "rateAppDialogTitle" : MessageLookupByLibrary.simpleMessage("App Rated"),
    "ratingsAnswer1five" : MessageLookupByLibrary.simpleMessage("Excellent. I love this App."),
    "ratingsAnswer1four" : MessageLookupByLibrary.simpleMessage("Good. I like it."),
    "ratingsAnswer1one" : MessageLookupByLibrary.simpleMessage("Terrible. I do not like."),
    "ratingsAnswer1three" : MessageLookupByLibrary.simpleMessage("Regular. It is a normal App."),
    "ratingsAnswer1two" : MessageLookupByLibrary.simpleMessage("Bad. You need to improve some aspects."),
    "ratingsAnswer2five" : MessageLookupByLibrary.simpleMessage("Excellent. I love them."),
    "ratingsAnswer2four" : MessageLookupByLibrary.simpleMessage("Good. I like them."),
    "ratingsAnswer2one" : MessageLookupByLibrary.simpleMessage("Terrible. I do not like."),
    "ratingsAnswer2three" : MessageLookupByLibrary.simpleMessage("Regular. They are normal."),
    "ratingsAnswer2two" : MessageLookupByLibrary.simpleMessage("Bad. It needs effort."),
    "ratingsAnswer4five" : MessageLookupByLibrary.simpleMessage("They are more than I need."),
    "ratingsAnswer4four" : MessageLookupByLibrary.simpleMessage("There is plenty."),
    "ratingsAnswer4one" : MessageLookupByLibrary.simpleMessage("They are very few, I want many more."),
    "ratingsAnswer4three" : MessageLookupByLibrary.simpleMessage("It has the necessary ones."),
    "ratingsAnswer4two" : MessageLookupByLibrary.simpleMessage("Some more would not hurt."),
    "ratingsAnswer5five" : MessageLookupByLibrary.simpleMessage("It has the perfect amount."),
    "ratingsAnswer5four" : MessageLookupByLibrary.simpleMessage("Some more would not hurt."),
    "ratingsAnswer5one" : MessageLookupByLibrary.simpleMessage("They are more than I allow."),
    "ratingsAnswer5three" : MessageLookupByLibrary.simpleMessage("It has the necessary ones."),
    "ratingsAnswer5two" : MessageLookupByLibrary.simpleMessage("There is plenty."),
    "rewardPageCompleted" : MessageLookupByLibrary.simpleMessage("Completed"),
    "rewardPageInstructions" : MessageLookupByLibrary.simpleMessage("Complete the following actions to get rewards so you can download your favorite proverbs"),
    "rewardPageOf" : MessageLookupByLibrary.simpleMessage("of"),
    "rewardPageReward" : MessageLookupByLibrary.simpleMessage("Reward"),
    "rewardPageTitle" : MessageLookupByLibrary.simpleMessage("Rewards"),
    "rewardsAddFavoriteProverb" : MessageLookupByLibrary.simpleMessage("Add Favorite Proverbs"),
    "rewardsConsecutivesDays" : MessageLookupByLibrary.simpleMessage("Consecutive Days Connected"),
    "rewardsDownloadProverb" : MessageLookupByLibrary.simpleMessage("Download Proverbs"),
    "rewardsFeedback" : MessageLookupByLibrary.simpleMessage("Give us Feedback"),
    "rewardsRateApp" : MessageLookupByLibrary.simpleMessage("Rate App"),
    "rewardsShareApp" : MessageLookupByLibrary.simpleMessage("Share App"),
    "rewardsShareProverb" : MessageLookupByLibrary.simpleMessage("Share Proverbs"),
    "shareAppDialogDescription" : m8,
    "shareAppDialogTitle" : MessageLookupByLibrary.simpleMessage("App Shared"),
    "shareCTA" : MessageLookupByLibrary.simpleMessage("Download Proverbs in Google Play"),
    "shareProverbsDialogDescription" : m9,
    "shareProverbsDialogTitle" : m10,
    "shareSubject" : MessageLookupByLibrary.simpleMessage("I want to share a Proverb with you!"),
    "tagNamesAll" : MessageLookupByLibrary.simpleMessage("All"),
    "tagNamesNewest" : MessageLookupByLibrary.simpleMessage("Newest"),
    "tagNamesPopular" : MessageLookupByLibrary.simpleMessage("Popular"),
    "tagNamesPremium" : MessageLookupByLibrary.simpleMessage("Premium")
  };
}
