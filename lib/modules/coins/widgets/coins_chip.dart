import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../core/utils/my_themes.dart';
import '../../rewards/pages/rewards_page.dart';
import '../model/coins.dart';
import '../services/coins_service.dart';
import 'coins_value.dart';

class CoinsChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => RewardsPage.navigateTo(context),
      child: Hero(
        tag: 'action-coin-chip',
        child: Container(
          padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
          margin: const EdgeInsets.fromLTRB(0, 15.0, 8.0, 15.0),
          decoration: BoxDecoration(
            color: MyThemes.accentColorLight,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: MyThemes.accentColor),
          ),
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ValueListenableBuilder(
                valueListenable: CoinsService.getValueListenable(),
                builder: (context, Box<Coins> box, widget) {
                  return CoinsValue(value: CoinsService.getCoinsValue(box));
                },
              ),
              Container(
                decoration: BoxDecoration(
                  color: MyThemes.accentColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                ),
                child: Icon(
                  Icons.add,
                  color: MyThemes.accentColorConstrast,
                  size: 25.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
