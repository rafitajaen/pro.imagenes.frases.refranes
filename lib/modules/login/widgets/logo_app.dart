import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class LogoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TypewriterAnimatedTextKit(
        speed: Duration(milliseconds: 500),
        totalRepeatCount: 1,
        text: [S.of(context).appTitle],
        textStyle: TextStyle(
          color: Colors.blueGrey[900],
          fontFamily: 'Nunito',
          fontSize: 60.0,
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.start,
        alignment: AlignmentDirectional.topStart,
      ),
    );
  }
}

class SubLogoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).appSubtitle,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.blueGrey[700],
                fontSize: 26.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).appSubtitleSecondLine,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.blueGrey[700],
                fontSize: 26.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
