import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:launch_review/launch_review.dart';

import '../../../core/services/firebase_auth_service.dart';
import '../../../core/services/navigate_to.dart';
import '../../../core/utils/my_themes.dart';
import '../../../generated/l10n.dart';
import '../../app_language/services/app_language_service.dart';
import '../../app_language/widgets/app_language_drawer_tile.dart';
import '../../coins/widgets/coin_button.dart';
import '../../favorites/widgets/favorites_drawer_tile.dart';
import '../../feedback/widgets/feedback_drawer_tile.dart';
import '../../promoted_apps/widgets/promoted_apps_drawer_tile.dart';
import '../../rewards/model/rewards/rewards.dart';
import '../../rewards/pages/rewards_page.dart';
import '../../rewards/services/rewards_service.dart';
import 'drawer_tile.dart';

class AraeDrawer extends StatelessWidget {
  final User user;

  const AraeDrawer({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //developer.log('AraeDrawer Render', name: 'pro.arae.AraeDrawer');
    return Drawer(
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          AraeDrawerHeader(user: user),
          //Divider(),
          CoinRaisedButton(
            label: S.of(context).drawerGetMoreCoins,
            onPressed: () => RewardsPage.navigateTo(context, popBefore: true),
          ),

          AraeDrawerBody(user: user),
          (user.name == null) ? Container() : AraeDrawerBottom(user: user)
        ],
      ),
    );
  }
}

class AraeDrawerHeader extends StatelessWidget {
  final User user;

  const AraeDrawerHeader({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        0,
        kToolbarHeight / 1.5,
        0,
        kToolbarHeight / 2,
      ),
      child: Text(
        S.of(context).appTitle,
        style: TextStyle(
          color: MyThemes.secondaryColor,
          fontFamily: 'Nunito',
          fontSize: 55.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class AraeDrawerBody extends StatelessWidget {
  final User user;

  const AraeDrawerBody({Key key, @required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //developer.log('AraeDrawerBody Render', name: 'pro.arae.AraeDrawerBody');
    return Expanded(
      child: ListView(
        children: <Widget>[
          FavoritesDrawerTile(),
          PromotedAppsDrawerTile(),
          RateAppDrawerTile(),
          DrawerTile(
            title: S.of(context).drawerShareApp,
            onTap: () async {
              LaunchReview.launch(androidAppId: 'pro.imagenes.frases.refranes');
              await Future.delayed(const Duration(seconds: 5), () {
                RewardsService.updateShareApp(context);
              });
            },
          ),
          Divider(),
          FeedbackDrawerTile(user: user),
          AppLanguageDrawerTile(),
          DrawerTile(
            title: S.of(context).drawerSignOut,
            trailingIcon: Icons.settings_power,
            onTap: () => NavigateTo.signOut(context, popBefore: true),
          )
        ],
      ),
    );
  }
}

class RateAppDrawerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppLanguageService.shuffle();
    return ValueListenableBuilder(
      valueListenable: RewardsService.getValueListenable(),
      builder: (context, Box<Rewards> box, widget) {
        bool isComplete = RewardsService.isRateAppCompleted();
        if (isComplete) {
          return Container();
        } else {
          return DrawerTile(
            title: S.of(context).drawerRateApp,
            onTap: () async {
              LaunchReview.launch(androidAppId: 'pro.imagenes.frases.refranes');
              await Future.delayed(const Duration(seconds: 5), () {
                RewardsService.updateRateApp(context);
              });
            },
          );
        }
      },
    );
  }
}

class AraeDrawerBottom extends StatelessWidget {
  final User user;

  const AraeDrawerBottom({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return // This container holds the align
        Container(
      // This align moves the children to the bottom
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        // This container holds all the children that will be aligned
        // on the bottom and should not scroll with the above ListView
        child: Container(
          child: Column(
            children: <Widget>[
              Divider(),
              ListTile(
                trailing: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 25.0,
                  backgroundImage: (user.photourl == null)
                      ? null
                      : NetworkImage(user.photourl),
                ),
                title: Text(
                  '${user.name}',
                  style: TextStyle(
                    color: MyThemes.secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  S.of(context).drawerPremiumUser,
                  style: TextStyle(
                    color: MyThemes.secondaryColorContrast,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
