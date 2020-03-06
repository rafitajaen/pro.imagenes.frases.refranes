import 'package:flutter/material.dart';

import '../../../core/utils/my_themes.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final int badge;
  final bool highlight;
  final IconData trailingIcon;
  final void Function() onTap;

  const DrawerTile(
      {Key key,
      @required this.title,
      this.badge,
      this.highlight = false,
      this.trailingIcon = Icons.arrow_forward,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //developer.log('DrawerTile Render con: [title: $title - badge: $badge - hightlight: $highlight - onTap: $onTap]', name: 'pro.arae.DrawerTile');
    return ListTile(
      title: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: MyThemes.secondaryColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
          (badge != null)
              ? DrawerBadge(value: badge, highlight: highlight)
              : Container(),
        ],
      ),
      trailing: Icon(
        trailingIcon,
        color: MyThemes.secondaryColorContrast,
      ),
      onTap: onTap ?? () {},
    );
  }
}

class DrawerBadge extends StatelessWidget {
  final int value;
  final bool highlight;

  const DrawerBadge({Key key, @required this.value, this.highlight = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //developer.log('DrawerBadge Render con: [value: $value - hightlight: $highlight]', name: 'pro.arae.DrawerBadge');
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color:
            highlight ? MyThemes.accentColor : MyThemes.secondaryColorContrast,
        //border: Border.all(width: 1.0, color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        '$value',
        style: highlight
            ? TextStyle(color: MyThemes.accentColorConstrast)
            : TextStyle(color: MyThemes.secondaryColor),
      ),
    );
  }
}
