import 'package:flutter/material.dart';

import '../../../core/services/admob_service.dart';
import '../../../generated/l10n.dart';

class AchievementDialog extends StatelessWidget {
  final String title;
  final String description;
  final IconData topIcon;

  const AchievementDialog(
      {Key key,
      @required this.title,
      @required this.description,
      @required this.topIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 10.0),
            margin: EdgeInsets.only(top: 20.0),
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: const Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // To make the card compact
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 24.0),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                      AdMobService.showRewarded();
                    },
                    color: Colors.redAccent[400],
                    icon: Icon(Icons.movie_filter, color: Colors.white),
                    label: Text(
                      S.of(context).dialogButtonDoubleCoins,
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // To close the dialog
                    },
                    //color: Colors.redAccent[400],
                    child: Text(
                      S.of(context).dialogButtonOK,
                      style: TextStyle(fontSize: 14.0, color: Colors.grey[400]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10.0,
            right: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 35.0,
              child: Icon(
                topIcon,
                size: 35.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
