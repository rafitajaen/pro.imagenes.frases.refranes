import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hive/hive.dart';

import '../../modules/app_language/model/app_language.dart';
import '../../modules/app_language/services/app_language_service.dart';
import '../../modules/proverb/model/proverb.dart';
import '../../modules/proverb/widgets/proverb_card.dart';
import '../../modules/tag/model/tag.dart';

class AraeSwiperByTag extends StatelessWidget {
  final Tag tag;

  const AraeSwiperByTag({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SwiperController controller = SwiperController();
    return ValueListenableBuilder(
      valueListenable: AppLanguageService.getValueListenable(),
      builder: (context, Box<AppLanguage> box, widget) {
        List<Proverb> currentDB =
            AppLanguageService.getCurrentDBByTag(box, tag);
        developer.log('currentDB lenght: ${currentDB.length}',
            name: 'pro.arae.AraeSwiperByTag');
        return Container(
          child: Swiper(
            controller: controller,
            viewportFraction: 0.88,
            itemCount: currentDB.length,
            loop: false,
            itemBuilder: (context, index) {
              return ProverbCard(
                proverb: currentDB[index],
                isDetail: false,
              );
            },
          ),
        );
      },
    );
  }
}
