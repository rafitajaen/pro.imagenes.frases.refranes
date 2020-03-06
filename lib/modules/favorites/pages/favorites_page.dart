import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hive/hive.dart';

import '../../../core/services/admob_service.dart';
import '../../../core/services/analytics_service.dart';
import '../../../generated/l10n.dart';
import '../../app_language/database/app_language_database.dart';
import '../../arae_app_bar/widgets/arae_app_bar.dart';
import '../../proverb/model/proverb.dart';
import '../../proverb/widgets/proverb_card.dart';
import '../model/favorites.dart';
import '../services/favorites_service.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AraeAppBar(title: S.of(context).favoritesPageTitle),
      body: Container(
        child: ValueListenableBuilder(
          valueListenable: FavoritesService.getValueListenable(),
          builder: (context, Box<Favorites> box, widget) {
            List<int> favoritesList = FavoritesService.getFavoritesValue(box);

            List<Proverb> temp =
                AppLanguagesDatabase.byFavoritesList(favoritesList);
            if (temp.length == 0) {
              return NoFavoritestTile();
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Swiper(
                      viewportFraction: 0.88,
                      itemCount: temp.length,
                      loop: false,
                      itemBuilder: (context, index) {
                        return ProverbCard(
                          proverb: temp[index],
                          isDetail: false,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 18.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      //height: 90.0,
                      child: Center(
                        child: AdmobBanner(
                          adUnitId: AdMobService.bannerAdUnitID,
                          adSize: AdmobBannerSize.BANNER,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  static navigateTo(BuildContext context, {bool popBefore = false}) {
    const String screenName = 'favorites_page';

    if (popBefore) Navigator.of(context).pop();
    AnalyticsService.setCurrentScreen(context, screenName);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FavoritesPage(),
        settings: RouteSettings(name: screenName),
      ),
    );
  }
}

class NoFavoritestTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text(
          S.of(context).noFavoritesTitle,
          textAlign: TextAlign.center,
        ),
        subtitle: Text(
          S.of(context).noFavoritesSubtitle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
