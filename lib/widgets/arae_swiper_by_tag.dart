import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:refranes/database/my_database.dart';
import 'dart:developer' as developer;

import 'package:refranes/model/article.dart';
import 'package:refranes/utils/tag_utils.dart';
import 'package:refranes/widgets/proverb_card/proverb_card.dart';

class AraeSwiperByTag extends StatelessWidget {
  final Tag tag;

  const AraeSwiperByTag({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    developer.log('Dentro de AraeSwiperByTag',
        name: 'pro.arae.AraeSwiperByTag');
    List<Article> temp = MyDatabase.byTag(tag);
    developer.log('currentDB lenght: ${MyDatabase.currentDB.length}',
        name: 'pro.arae.AraeSwiperByTag');
    return Container(
      child: Swiper(
        viewportFraction: 0.88,
        itemCount: temp.length,
        loop: false,
        itemBuilder: (context, index) {
          return ProverbCard(
            article: temp[index],
            isDetail: false,
          );
        },
      ),
    );
  }
}
