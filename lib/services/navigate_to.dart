import 'package:flutter/material.dart';
import 'package:refranes/model/article.dart';
import 'package:refranes/pages/detail_page.dart';


class NavigateTo {
  static const _kDetailPage = 'detail_page';


  static detailPage(BuildContext context, Article article) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailPage(article: article),
        settings: RouteSettings(name: _kDetailPage),
      ),
    );
  }


}
