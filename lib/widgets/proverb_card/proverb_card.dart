import 'package:flutter/material.dart';
import 'package:refranes/model/article.dart';
import 'package:refranes/services/navigate_to.dart';
import 'package:refranes/utils/my_themes.dart';
import 'package:refranes/utils/tag_utils.dart';
import 'package:refranes/widgets/proverb_card/favorite_icon.dart';

class ProverbCard extends StatelessWidget {
  final Article article;
  final bool isDetail;

  const ProverbCard({Key key, this.article, this.isDetail = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isDetail
          ? EdgeInsets.only(left: 0, right: 0)
          : EdgeInsets.only(right: 15.0, top: 5.0, bottom: 35.0),
      child: Hero(
        tag: 'detail-${article.id}',
        child: Card(
          elevation: 14.0,
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
          shape: RoundedRectangleBorder(
            borderRadius: isDetail
                ? BorderRadius.circular(0)
                : BorderRadius.circular(10.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(article.image ??
                    'https://images.unsplash.com/photo-1514483127413-f72f273478c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipPath(
              child: InkWell(
                  onTap: () {
                    if (!isDetail) NavigateTo.detailPage(context, article);
                  },
                  child: Container(
                    color: article.color ?? Color(0x20202020),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _topProverbCard(),
                        _middleProverbCard(context),
                        _bottomProverbCard(),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }

  Widget _topProverbCard() {
    Widget output = Container();

    if (!isDetail) {
      output = Container(
        margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
        alignment: Alignment.topRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: _topWidgetList(),
        ),
      );
    }

    return output;
  }

  List<Widget> _topWidgetList() {
    List<Widget> output = TagUtils.tagChipList(article.tags);
    output.add(Expanded(child: Container()));
    output.add(FavoriteIcon(article: article));
    return output;
  }

  Widget _middleProverbCard(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
      child: Column(
        children: <Widget>[
          Divider(
            height: 24.0,
            thickness: 1.0,
            color: Colors.white54,
            endIndent: MediaQuery.of(context).size.width / 5,
            indent: MediaQuery.of(context).size.width / 5,
          ),
          Text(
            '\"${article.title}\"',
            maxLines: 4,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontFamily: 'Bebas Neue',
              fontSize: 32.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          Divider(
            height: 24.0,
            thickness: 1.0,
            color: Colors.white54,
            endIndent: MediaQuery.of(context).size.width / 5,
            indent: MediaQuery.of(context).size.width / 5,
          ),
        ],
      ),
    );
  }

  Widget _bottomProverbCard() {
    return isDetail
        ? Container()
        : Container(
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.fromLTRB(5.0, 0, 20.0, 20.0),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: MyThemes.accentColor,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 36.0,
                    color: MyThemes.accentColorConstrast,
                  ),
                ),
              ],
            ),
          );
  }
}
