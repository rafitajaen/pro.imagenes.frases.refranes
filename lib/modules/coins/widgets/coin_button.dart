import 'package:flutter/material.dart';

import '../../../core/utils/my_themes.dart';
import 'coins_icon.dart';

class CoinRaisedButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const CoinRaisedButton(
      {Key key, @required this.label, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: onPressed,
      color: MyThemes.accentColor,
      icon: CoinsIcon(),
      label: Text(
        label,
        style: TextStyle(color: MyThemes.accentColorConstrast),
      ),
    );
  }
}
