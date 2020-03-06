import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share/share.dart';

import '../../../core/services/analytics_service.dart';
import '../../../core/utils/image_utils.dart';
import '../../../generated/l10n.dart';
import '../../arae_app_bar/widgets/arae_app_bar.dart';
import '../../coins/services/coins_service.dart';
import '../../favorites/services/favorites_service.dart';
import '../../rewards/services/rewards_service.dart';
import '../model/proverb.dart';
import '../widgets/proverb_card.dart';

class ProverbDetailPage extends StatefulWidget {
  final Proverb proverb;

  ProverbDetailPage({@required this.proverb});

  @override
  _ProverbDetailPageState createState() => _ProverbDetailPageState();

  static navigateTo(BuildContext context, Proverb proverb,
      {bool popBefore = false}) {
    const String screenName = 'detail_page';

    if (popBefore) Navigator.of(context).pop();
    AnalyticsService.setCurrentScreen(context, screenName);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProverbDetailPage(proverb: proverb),
        settings: RouteSettings(name: screenName),
      ),
    );
  }
}

class _ProverbDetailPageState extends State<ProverbDetailPage> {
  GlobalKey globalKey = GlobalKey();

/*   @override
  void initState() {
    super.initState();
    AdMobService.loadIntersticial();
  }

  @override
  void dispose() {
    AdMobService.showIntersticial();
    super.dispose();
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AraeAppBar(title: ''),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Expanded(
                child: RepaintBoundary(
                  key: globalKey,
                  child: Dismissible(
                    key: Key(''),
                    background: Container(
                      alignment: AlignmentDirectional.centerEnd,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.arrow_back, color: Colors.grey),
                          SizedBox(width: 5.0),
                          Text(
                            S.of(context).detailPageBack,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    onDismissed: (direction) {
                      Navigator.of(context).pop();
                    },
                    child: ProverbCard(proverb: widget.proverb, isDetail: true),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 15.0, 0, 10.0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton.icon(
                      color: Colors.red[500],
                      icon: Icon(
                        Icons.favorite_border,
                        size: 20.0,
                        color: Colors.grey[50],
                      ),
                      label: Text(
                        S.of(context).detailPageLikeButton,
                        style: TextStyle(
                          color: Colors.grey[50],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        FavoritesService.update(widget.proverb.id);
                        RewardsService.updateAddFavorites(context,
                            FavoritesService.isFavorite(widget.proverb.id));
                      },
                    ),
                    RaisedButton.icon(
                      color: Colors.blue[600],
                      icon: Icon(
                        Icons.file_download,
                        size: 20.0,
                        color: Colors.grey[50],
                      ),
                      label: Text(
                        S.of(context).detailPageDownloadButton,
                        style: TextStyle(
                          color: Colors.grey[50],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () async {
                        bool isPremium = widget.proverb.isPremium();
                        if (CoinsService.canDownload(context, isPremium)) {
                          await ImageUtils.saveInGallery(context, globalKey);
                          RewardsService.updateDownloadProverb(context);
                          CoinsService.update(isPremium);
                        }
                      },
                    ),
                    RaisedButton.icon(
                      color: Colors.orange[500],
                      icon: Icon(
                        Icons.share,
                        size: 20.0,
                        color: Colors.grey[50],
                      ),
                      label: Text(
                        S.of(context).detailPageShareButton,
                        style: TextStyle(
                          color: Colors.grey[50],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        Share.share(
                            '\"${widget.proverb.title}\" - ${S.of(context).shareCTA} - http://bit.ly/refranesApp',
                            subject: S.of(context).shareSubject);
                        RewardsService.updateShareApp(context);
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[700],
                indent: MediaQuery.of(context).size.width * 0.30,
                endIndent: MediaQuery.of(context).size.width * 0.30,
                height: 45.0,
              ),
              DetailMeaning(widget.proverb),
              Divider(
                color: Colors.grey[700],
                indent: MediaQuery.of(context).size.width * 0.30,
                endIndent: MediaQuery.of(context).size.width * 0.30,
                height: 45.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailMeaning extends StatelessWidget {
  final Proverb proverb;

  DetailMeaning(this.proverb);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0.0),
      child: Column(
        //initiallyExpanded: true,
        //title: Text(S.of(context).detailPageMeaning),
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
            child: Text(
              '${S.of(context).detailPageMeaning.toUpperCase()}',
              style: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 22.0,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            child: Text(
              proverb.subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontFamily: 'Nunito',
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
