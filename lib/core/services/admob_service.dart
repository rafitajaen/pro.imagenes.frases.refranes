import 'dart:developer' as developer;

import 'package:admob_flutter/admob_flutter.dart';
import 'package:firebase_admob/firebase_admob.dart';

import '../../modules/coins/services/coins_service.dart';
import '../../modules/last_reward/services/last_reward_service.dart';

class AdMobService {
  static String appID = 'ca-app-pub-9265269293046304~8466944851';
  static String bannerAdUnitID = 'ca-app-pub-9265269293046304/7305056361';
  static String interstitialAdUnitID = 'ca-app-pub-9265269293046304/2838024287';
  static String rewardAdUnitID = 'ca-app-pub-9265269293046304/7064929931';

  static AdmobReward rewardAd;

  static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    testDevices: <String>[], // Android emulators are considered test devices
  );

  static BannerAd myBanner = BannerAd(
    adUnitId: bannerAdUnitID,
    size: AdSize.smartBanner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      developer.log('BannerAd event is $event',
          name: 'pro.arae.AdMobService.myBanner');
      if (event == MobileAdEvent.closed) myBanner.load();
    },
  );

  static InterstitialAd myInterstitial = InterstitialAd(
    adUnitId: interstitialAdUnitID,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      developer.log('InterstitialAd event is $event',
          name: 'pro.arae.AdMobService.myInterstitial');
      if (event == MobileAdEvent.closed) myInterstitial.load();
    },
  );

  static void loadAds() {
    myBanner.load();
    myInterstitial.load();
  }

  static void disposeAds() {
    myBanner.dispose();
    myInterstitial.dispose();
  }

  static Future<void> initialize() async {
    //FirebaseAdMob.instance.initialize(appId: appID);
    Admob.initialize(appID);
    RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event,
        {String rewardType, int rewardAmount}) async {
      switch (event) {
        case RewardedVideoAdEvent.loaded:
          break;
        case RewardedVideoAdEvent.failedToLoad:
          break;
        case RewardedVideoAdEvent.opened:
          break;
        case RewardedVideoAdEvent.leftApplication:
          break;
        case RewardedVideoAdEvent.closed:
          await loadRewarded();
          break;
        case RewardedVideoAdEvent.rewarded:
          {
            CoinsService.addCoins(LastRewardService.getValue());
            LastRewardService.clear();
          }
          break;
        case RewardedVideoAdEvent.started:
          break;
        case RewardedVideoAdEvent.completed:
          break;
      }
      developer.log(
          'Event: $event - rewardType: $rewardType - rewardAmount: $rewardAmount',
          name: 'rafita_admob.AdmobService.rewardedAdVideoListener');
    };
    await loadRewarded();
  }

  static Future<void> loadRewarded() async {
    await RewardedVideoAd.instance.load(
        adUnitId: RewardedVideoAd.testAdUnitId, targetingInfo: targetingInfo);
  }

  static void showRewarded() {
    RewardedVideoAd.instance.show();
  }

  static void loadIntersticial() {
    myInterstitial.load();
  }

  static void showIntersticial() {
    myInterstitial.show();
  }
}
