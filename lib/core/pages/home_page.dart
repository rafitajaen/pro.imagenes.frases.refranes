import 'dart:developer' as developer;

import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../modules/arae_app_bar/widgets/arae_app_bar.dart';
import '../../modules/arae_drawer/widgets/arae_drawer.dart';
import '../../modules/tag/model/tag.dart';
import '../../modules/tag/utils/tag_utils.dart';
import '../services/admob_service.dart';
import '../services/firebase_auth_service.dart';
import '../utils/my_themes.dart';
import '../widgets/arae_swiper_by_tag.dart';

class HomePage extends StatefulWidget {
  final User user;

  const HomePage({Key key, this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: Tag.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Tag.values.length,
      child: Scaffold(
        //backgroundColor: Colors.black,
        drawer: AraeDrawer(user: widget.user),
        appBar: AraeAppBar(
            title: S.of(context).homePageTitleDiscover, isHome: true),
        body: _buildBody(context),
      ),
    );
  }

////////////////////////
  ///
  /// HomePage - TabBar
  ///
////////////////////////

  TabBar _buildTabBar(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: true,
      //INDICATOR
      indicatorWeight: 2.0,
      indicatorColor: MyThemes.accentColor,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.fromLTRB(28.0, 0, 35.0, 0.0),
      //SELECTED LABEL
      labelColor: MyThemes.secondaryColor,
      labelStyle: TextStyle(
        //color: MyThemes.accentColor,
        fontFamily: 'Nunito',
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
      labelPadding: EdgeInsets.fromLTRB(0, 0.0, 20.0, 0),
      //UNSELECTED LABEL
      unselectedLabelColor: MyThemes.secondaryColorContrast,
      unselectedLabelStyle: TextStyle(
        //color: MyThemes.secondaryColor,
        fontFamily: 'Nunito',
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),

      tabs: _buildTabs(context),
    );
  }

  List<Widget> _buildTabs(BuildContext context) {
    return Tag.values.map((tag) {
      return Tab(
        child: Container(
          child: Align(
            alignment: Alignment.center,
            child: Text(TagUtils.tagName(context, tag).toUpperCase()),
          ),
        ),
      );
    }).toList();
  }

  /////////////////////
  ///
  /// HomePage Body
  ///
  /////////////////////

  Widget _buildBody(BuildContext context) {
    developer.log('HomePage Body', name: 'pro.arae.HomePage._buildBody');
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          _buildTabBar(context),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            //flex: 15,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                AraeSwiperByTag(tag: Tag.values[0]),
                AraeSwiperByTag(tag: Tag.values[1]),
                AraeSwiperByTag(tag: Tag.values[2]),
                AraeSwiperByTag(tag: Tag.values[3]),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12.0),
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
      ),
    );
  }
}
