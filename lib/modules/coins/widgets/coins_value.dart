import 'package:flutter/material.dart';

import '../../../core/utils/my_themes.dart';
import 'coins_icon.dart';

class CoinsValue extends StatelessWidget {
  final int value;

  const CoinsValue({Key key, @required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CoinsIcon(),
        Container(
          margin: const EdgeInsets.fromLTRB(2.0, 0, 12.0, 0),
          child: Text(
            '$value',
            style: TextStyle(
              color: MyThemes.secondaryColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
