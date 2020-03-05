import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:refranes/utils/my_themes.dart';

import 'dart:developer' as developer;

import 'package:refranes/utils/tag_utils.dart';
import 'package:refranes/widgets/arae_app_bar.dart';
import 'package:refranes/widgets/arae_swiper_by_tag.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Tag _tag = Tag.all;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Tag.values.length,
      child: Scaffold(
        appBar: AraeAppBar(title: 'REFRANES', isHome: true),
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

      onTap: (index) {
        setState(() {
          _tag = Tag.values[index];
        });
      },
      tabs: _buildTabs(context),
    );
  }

  List<Widget> _buildTabs(BuildContext context) {
    return Tag.values.map((tag) {
      return Tab(
        child: Container(
          child: Align(
              alignment: Alignment.center,
              child: Text(TagUtils.tagName(context, tag).toUpperCase())),
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
            child: AraeSwiperByTag(tag: _tag),
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
                  adUnitId: 'ca-app-pub-9265269293046304/7305056361',
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
